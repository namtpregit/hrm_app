import 'package:flutter/material.dart';
import 'package:hrm_app/widgets/navigation_bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({ super.key });
  
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Trang chu';
    const selectedIndex = 1;
    
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text('Trang chu')),
        body: const Center(
          child: Text('Home'),
        ),
          bottomNavigationBar: const NewWidget(selectedIndex: selectedIndex)
      ),
    );
  }
}