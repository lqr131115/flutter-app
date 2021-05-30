import 'package:flutter/material.dart';
import 'package:zufan/widgets/page_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> barViewList = [
    PageContent(name: '首页'),
    PageContent(name: '搜索'),
    PageContent(name: '咨询'),
    PageContent(name: '我的'),
  ];
  static const List<BottomNavigationBarItem> barItemList = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '首页',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: '搜索',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.info),
      label: '咨询',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: '我的',
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: barViewList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: barItemList,
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
