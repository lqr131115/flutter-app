import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(MaterialApp(home: Home()));
}

class Controller1 extends GetxController{
  var count = 0.obs;
  increment() => count++;
}

class Controller2 extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller1 c1 = Get.put(Controller1());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(title: Obx(() => Text("Clicks: ${c1.count}"))),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Center(child: ElevatedButton(
              child: Text("Go to Other"), onPressed: () => Get.to(Other()))),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: c1.increment));
  }
}

class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller1 c1 = Get.find();

  @override
  Widget build(context){
     // Access the updated count variable
     return Scaffold(body: Center(child: Text("${c1.count}")));
  }
}

class Second extends StatelessWidget {
  final Controller2 ctrl = Get.find();
  @override
  Widget build(context){
     return Scaffold(body: Center(child: Text("${ctrl.count}")));
  }
}