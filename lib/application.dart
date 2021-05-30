import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import './routes/index.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: routes,
    );
  }
}
