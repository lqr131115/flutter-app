import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zufan/utils/dialog.dart';
import 'package:zufan/utils/window.dart';

const List<Map> defaultArea = [];

// value 值为label对应值的拼音
const List<Map> defaultWay = [
  {'label': '排序综合', 'selected': true, 'value': 'zhpx'},
  {'label': '离我最近', 'selected': false, 'value': 'lwzj'},
  {'label': '最新发布', 'selected': false, 'value': 'zxfb'},
  {'label': '价格从低到高', 'selected': false, 'value': 'cddg'},
  {'label': '价格从高到低', 'selected': false, 'value': 'cgdd'},
];
const List<Map> defaultRent = [
  {'label': '不限', 'min': null, 'max': null, 'selected': true, 'value': 'bx'},
  {
    'label': '1000元以下',
    'min': 0,
    'max': 1000,
    'selected': false,
    'value': 'under1k'
  },
  {
    'label': '1000~2000元',
    'min': 1000,
    'max': 2000,
    'selected': false,
    'value': '1kTo2k'
  },
  {
    'label': '2000~3000元',
    'min': 2000,
    'max': 3000,
    'selected': false,
    'value': '2kTo3k'
  },
  {
    'label': '3000~5000元',
    'min': 3000,
    'max': 5000,
    'selected': false,
    'value': '3kTo5k'
  },
  {
    'label': '5000元以上',
    'min': 5000,
    'max': null,
    'selected': false,
    'value': 'overtop5k'
  },
  {
    'label': 'custom',
    'min': 5000,
    'max': null,
    'selected': false,
    'value': 'custom'
  },
];
const List<Map> defaultFilter = [];

class FliterBar extends StatelessWidget {
  final List<Map> area;
  final List<Map> way;
  final List<Map> rent;
  final List<Map> filter;

  const FliterBar(
      {Key? key,
      this.area = defaultArea,
      this.way = defaultWay,
      this.rent = defaultRent,
      this.filter = defaultFilter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.grey[50],
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 区域
          InkWell(
              onTap: () => Get.snackbar('cool', 'HHHHHH',
                  icon: Icon(Icons.snippet_folder)),
              child: Container(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      '区域',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 18.0,
                    )
                  ],
                ),
              )),
          // 方式
          InkWell(
              onTap: () => Get.bottomSheet(
                  Container(
                      child: Column(children: _getWays(this.way, context))),
                  backgroundColor: Colors.white),
              child: Container(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      '方式',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 18.0,
                    )
                  ],
                ),
              )),
          // 租金
          InkWell(
              onTap: () => Get.bottomSheet(
                  Container(
                      child: Column(children: _getRents(this.rent, context))),
                  backgroundColor: Colors.white),
              child: Container(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      '租金',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 18.0,
                    )
                  ],
                ),
              )),
          // 筛选
          InkWell(
              onTap: () => Get.bottomSheet(
                  Container(
                    height: WindowUtil.height / 2,
                  ),
                  backgroundColor: Colors.white),
              child: Container(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      '筛选',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 18.0,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

// {'label': '排序综合', 'selected': true, 'value': 'zhpx'},
List<Widget> _getWays(List<Map> paramsList, BuildContext context) {
  return paramsList
      .map(
        (item) => InkWell(
          onTap: () => print('选择了WAY'),
          child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item['label'],
                    style: TextStyle(
                        fontSize: 12,
                        color: item['selected'] ? Colors.black : Colors.grey),
                  ),
                  item['selected']
                      ? Icon(Icons.check, size: 16.0, color: Colors.orange[200])
                      : Text('x')
                ],
              )),
        ),
      )
      .toList();
}

// {'label': 'custom', 'min': 5000, 'max': null, 'selected': true,'value': 'custom'},
List<Widget> _getRents(List<Map> paramsList, BuildContext context) {
  return paramsList
      .map(
        (item) => InkWell(
          onTap: () => print('选择了Rent'),
          child: Container(
              padding: const EdgeInsets.all(10),
              child: item['value'] == 'custom'
                  ? Text('Custom')
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item['label'],
                          style: TextStyle(
                              fontSize: 12,
                              color: item['selected']
                                  ? Colors.black
                                  : Colors.grey),
                        ),
                        item['selected']
                            ? Icon(Icons.check,
                                size: 16.0, color: Colors.yellow[200])
                            : Text('x')
                      ],
                    )),
        ),
      )
      .toList();
}

