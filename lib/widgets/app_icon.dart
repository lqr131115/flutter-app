import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      // decoration: BoxDecoration(
      //   border: Border.all(width: 1, color: Colors.red),
      //   borderRadius: BorderRadius.all(Radius.circular(10)),
      // ),
      child: Image.network(
        'https://img2.baidu.com/it/u=342917226,392614904&fm=26&fmt=auto&gp=0.jpg',
        fit: BoxFit.fill,
        height: 80,
        width: 80,
      ),
    );
  }
}
