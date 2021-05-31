import 'package:flutter/material.dart';

class TabMine extends StatelessWidget {
  const TabMine({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mine'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Text('这里是TabMine')
        ],
      ),
    );
  }
}