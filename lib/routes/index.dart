import 'package:get/get.dart';
import 'package:zufan/pages/Home/index.dart';
import 'package:zufan/pages/Login/index.dart';
import 'package:zufan/pages/Register/index.dart';

List<GetPage> routes = [
  GetPage(
      name: '/login',
      page: () => LoginPage(),
      transition: Transition.rightToLeftWithFade),
  GetPage(
      name: '/register',
      page: () => RegisterPage(),
      transition: Transition.rightToLeftWithFade),
  GetPage(
      name: '/home',
      page: () => HomePage(),
      transition: Transition.rightToLeftWithFade),
];
