import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zufan/widgets/info_item.dart';

const List<Map> defaultLastestInfoItems = [
  {
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/e1a9270f07839f936f417b3d6786b323/640x420c.jpg?t=1',
    'des': ' 银湖公馆 毛坯两房 中间楼层 诚心卖',
    'id': '/01',
    'from': '复兴网',
    'publishTime': '3天前',
  },
  {
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/e1a9270f07839f936f417b3d6786b323/640x420c.jpg?t=1',
    'des': '送阁楼 排 全天采光 装修全送 无税急售',
    'id': '/01',
    'from': '便民网',
    'publishTime': '一周前',
  },
  {
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/29ea8beb782747326a06cdada1f58a18/640x420c.jpg?t=1',
    'des': '江城国际瑞景苑 精装两房 超高性价比',
    'id': '/01',
    'from': '智慧网',
    'publishTime': '一个月前',
  },
  {
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/d849bada73cad28ff71c6938cda79a60/640x420c.jpg?t=1',
    'des': '附小萃文！中央城精装两房 楼层视野开阔',
    'id': '/01',
    'from': '安居网',
    'publishTime': '两周前',
  },
];

List<Widget> _getLastestInfoLists(List<Map> paramsList, BuildContext context) {
  return paramsList
      .map((item) => InfoItem(
            imgsrc: item['imgsrc'],
            des: item['des'],
            from: item['from'],
            publishTime: item['publishTime'],
          ))
      .toList();
}

class LastestInfo extends StatelessWidget {
  final List<Map> lastestInfoItems;
  const LastestInfo({Key? key, this.lastestInfoItems = defaultLastestInfoItems})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              alignment: Alignment.centerLeft,
              child: Text(
                '最新资讯',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
                children:
                    _getLastestInfoLists(defaultLastestInfoItems, context))
          ],
        ));
  }
}
