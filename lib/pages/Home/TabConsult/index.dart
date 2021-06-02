import 'package:flutter/material.dart';
import 'package:zufan/pages/Home/TabConsult/widgets/fliter_bar.dart';
import 'package:zufan/pages/Home/TabConsult/widgets/house_list.dart';
import 'package:zufan/widgets/search_bar.dart';


class TabConsult extends StatelessWidget {
  const TabConsult({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          FliterBar(),
          HouseList(),
        ],
      ),
    );
  }
}