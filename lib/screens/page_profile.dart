import 'package:flutter/material.dart';
import 'package:hrm_app/widgets/navigation_bottom.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const selectedIndex = 4;
    return MaterialApp(
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.red,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(46),
              child: ColoredBox(
                color: Colors.white,
                child: TabBar(
                  tabs: [
                    Tab(text: 'Thông tin chung'),
                    Tab(text: 'Sơ yếu lý lịch'),
                  ],
                ),
              ),
            ),
            title: const Text('Hồ sơ nhân viên'),
          ),
          body: const TabBarView(
            children: [
              Tab1(),
              Tab2(),
            ],
          ),
          bottomNavigationBar: const NewWidget(selectedIndex: selectedIndex),
        ),
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      children: const <Widget>[
        NewWidget2(column: 'Họ và tên', text: 'Nguyễn Thị Hương Trà'),
        NewWidget2(column: 'Ngày sinh' ,text: '20-12-2023'),
        NewWidget2(column: 'Số điện thoại' ,text: '0333142495'),
        NewWidget2(column: 'Email' ,text: 'tranth@regit-technology.com'),
        NewWidget2(column: 'Quê quán' ,text: ''),
        NewWidget2(column: 'Biển số xe' ,text: ''),
        NewWidget2(column: 'Ngân hàng' ,text: ''),
        NewWidget2(column: 'Tài khoản' ,text: ''),
      ],
    );
  }
}

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      children: const <Widget>[
        NewWidget2(column: 'Tôn giáo', text: ''),
        NewWidget2(column: 'CMT/CCCD' ,text: '00132455547'),
        NewWidget2(column: 'Ngày cấp, Nơi cấp' ,text: '2011-04-04, Hà Nội'),
        NewWidget2(column: 'Địa chỉ thường trú' ,text: ''),
        NewWidget2(column: 'Địa chỉ hiện tại' ,text: ''),
        NewWidget2(column: 'Bằng cấp/ Chứng chỉ' ,text: ''),
        NewWidget2(column: 'Ngân hàng' ,text: ''),
      ],
    );
  }
}

class NewWidget2 extends StatefulWidget {
  const NewWidget2({
    super.key,
    required this.column,
    required this.text,
  });

  final String column;
  final String text;

  @override
  State<NewWidget2> createState() {
    return NewWidgetState();
  }
}

class NewWidgetState extends State<NewWidget2> {
  late String _value;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.column,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
                fontSize: 14.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 4.0),
            child: Text(
              widget.text,
              style: const TextStyle(fontSize: 14.0, fontFamily: 'Inter'),
            ),
          )
        ],
      ),
    );
  }
}
