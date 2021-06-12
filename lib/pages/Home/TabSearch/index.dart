import 'package:flutter/material.dart';
import 'package:zufan/pages/Home/TabSearch/widgets/fliter_bar.dart';
import 'package:zufan/pages/Home/TabSearch/widgets/house_list.dart';
import 'package:zufan/widgets/search_bar.dart';

class TabSearch extends StatelessWidget {
  const TabSearch({Key? key}) : super(key: key);
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
