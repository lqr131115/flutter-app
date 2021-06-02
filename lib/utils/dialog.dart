import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogUtil {
  static delete(context) {
    return Get.defaultDialog(
      title: '提示',
      titleStyle: TextStyle(color: Colors.orange, fontSize: 14),
      content: Wrap(
        children: [Text('确认删除吗?')],
      ),
      textCancel: '取消',
      cancelTextColor: Colors.redAccent,
      textConfirm: '确定',
      confirmTextColor: Colors.greenAccent,
      buttonColor: Colors.grey[200],
      onCancel: () => Get.back(),
      onConfirm: () => Get.back(),
    );
  }
}
