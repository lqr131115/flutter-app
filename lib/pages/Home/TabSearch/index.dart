import 'package:flutter/material.dart';

class TabSearch extends StatelessWidget {
  const TabSearch({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Text('这里是TabSearch')
        ],
      ),
    );
  }
}