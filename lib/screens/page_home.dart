import 'package:flutter/material.dart';
import 'package:hrm_app/widgets/navigation_bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Trang chu';
    const selectedIndex = 1;

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
              title: Row(
            children: [
              const Text(appTitle),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.notifications,
                        color: Colors.white, size: 24.0)),
              ),
              GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.account_circle,
                      color: Colors.white, size: 24.0)),
            ],
          )),
          body: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Box1(),
              BoxTask(),
              Text('Home'),
            ],
          ),
          bottomNavigationBar: const NewWidget(selectedIndex: selectedIndex)),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: const Color(0xffE9F0F2),
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 2.0),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Text(
          'Chấm công',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}

class Box1 extends StatelessWidget {
  const Box1({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: const Color(0xffE9F0F2),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '26-8-2023 (Thứ 4)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC7471E),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text('Checkin'),
                ),
                const VerticalDivider(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffA9A5A3),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text('Checkout'),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

class BoxTask extends StatelessWidget {
  const BoxTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: Colors.grey,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(2),
      child: Container(
        color: const Color(0xffE9F0F2),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 2.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '26-8-2023 (Thứ 4)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC7471E),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text('Checkin'),
                ),
                const VerticalDivider(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffA9A5A3),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text('Checkout'),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
