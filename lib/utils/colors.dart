import 'dart:math';
import 'package:flutter/material.dart';

class ColorUtil {
  static randonColor() {
    return Color.fromARGB(
      255,
      Random.secure().nextInt(200),
      Random.secure().nextInt(200),
      Random.secure().nextInt(200),
    );
  }
}
