import 'package:flutter/material.dart';
import 'package:zufan/pages/Home/TabIndex/widgets/lastest_info.dart';
import 'package:zufan/pages/Home/TabMine/widgets/ad_swiper.dart';
import 'package:zufan/pages/Home/TabMine/widgets/func_area.dart';
import 'package:zufan/pages/Home/TabMine/widgets/use_info.dart';

class TabMine extends StatelessWidget {
  const TabMine({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '我的',
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            UserInfo(),
            FuncArea(),
            AdSwiper(),
            LastestInfo(),
          ],
        ));
  }
}
