import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'Thông tin chung'),
                Tab(text: 'Sơ yếu lý lịch'),
              ],
            ),
            title: const Text('Hồ sơ nhân viên'),
          ),
          body: const TabBarView(
            children: [
              Tab1(),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('abcccccccccccccccc')],
      ),
    );
  }
}
