import 'package:flutter/material.dart';
import 'package:zufan/widgets/search.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 定位
          InkWell(
            onTap: () => print('locations'),
            child: Container(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.room,
                      color: Colors.green,
                      size: 12.0,
                    ),
                    Center(
                      child: Text(
                        '北京',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 20.0,
                    )
                  ],
                )),
          ),
          // 搜索
          SearchIpt(),
          // 取消
          InkWell(
            onTap: () => print('取消'),
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Text(
                '取消',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //获取当前位置
          InkWell(
            onTap: () => print('获取当前位置'),
            child: Container(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset(
                'assets/images/location.png',
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
