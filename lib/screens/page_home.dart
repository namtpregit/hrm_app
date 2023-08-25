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
              BoxTask(),
              BoxTask(),
              Text('Home'),
            ],
          ),
          bottomNavigationBar: const NewWidget(selectedIndex: selectedIndex)
      ),
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
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: const BoxDecoration(
          color: Color(0xffE9F0F2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(2, 3), // Shadow position
            ),
          ],
        ),
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
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffE9F0F2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(2, 3), // Shadow position
            ),
          ],
        ),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.white, width: 2.0))),
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
                child: Text(
                  'Task được giao',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Inter'),
                ),
              ),
            ),
            ListView(
              padding: const EdgeInsets.all(8),
              shrinkWrap: true,
              children: const <Widget>[
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'Người giao:',
                          style: TextStyle(fontSize: 14, fontFamily: 'Inter'),
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Trần Văn Đức',
                          style: TextStyle(fontSize: 14, fontFamily: 'Inter'),
                        ),
                      ],
                    )),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'Dự án:',
                          style: TextStyle(fontSize: 14, fontFamily: 'Inter'),
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Rends',
                          style: TextStyle(fontSize: 14, fontFamily: 'Inter'),
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
                  child: Expanded(
                    child: Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                      style: TextStyle(fontSize: 14),
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis, //new
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
