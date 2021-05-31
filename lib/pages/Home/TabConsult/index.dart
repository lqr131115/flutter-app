import 'package:flutter/material.dart';


class TabConsult extends StatelessWidget {
  const TabConsult({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consult'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Text('这里是TabConsult')
        ],
      ),
    );
  }
}