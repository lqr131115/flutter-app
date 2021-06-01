import 'package:flutter/material.dart';

class FliterBar extends StatelessWidget {
  const FliterBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 定位
          InkWell(
            onTap: () => print('locations'),
            child: Container(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.room,
                      color: Colors.green,
                      size: 12.0,
                    ),
                    Center(
                      child: Text(
                        '北京',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.chevron_left,
                      size: 20.0,
                    )
                  ],
                )),
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: TextField(
                decoration: InputDecoration(
                    hintText: '请输入用户名',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic)),
              ),
            ),
          ),
          // 取消
          InkWell(
            onTap: () => print('取消'),
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Text(
                '取消',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          //获取当前位置
          InkWell(
            onTap: () => print('获取当前位置'),
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Image.asset(
                'lib/static/images/location.png',
                width: 20,
                height: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
