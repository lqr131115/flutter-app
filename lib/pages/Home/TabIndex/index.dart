import 'package:flutter/material.dart';
import 'package:zufan/pages/Home/TabIndex/widgets/house_rec.dart';
import 'package:zufan/pages/Home/TabIndex/widgets/lastest_info.dart';
import 'package:zufan/pages/Home/TabIndex/widgets/navigator.dart';
import 'package:zufan/widgets/swiper.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          FSwiper(),
          IndexNavigator(),
          HouseRecommend(),
          LastestInfo(),
        ],
      ),
    );
  }
}
