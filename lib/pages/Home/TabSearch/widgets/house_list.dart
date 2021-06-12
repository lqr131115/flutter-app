import 'package:flutter/material.dart';
import 'package:zufan/widgets/house_item.dart';

const List<Map> defaultHouseItems = [
  {
    'id': '01',
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/8b6e5b80bb0fb8684cb2c10053598151/640x420c.jpg?t=1',
    'des': '银湖公馆 毛坯两房 中间楼层 诚心卖|银湖公馆 毛坯两房 中间楼层 诚心卖',
    'location': '二室/101/时代广场',
    'tag': '个人直租',
    'rent': 4300,
  },
  {
    'id': '02',
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/e1a9270f07839f936f417b3d6786b323/640x420c.jpg?t=1',
    'des': '送阁楼 排 全天采光|装修全送 无税急售|送阁楼 排 全天采光',
    'location': '银湖公馆/装修全送',
    'tag': '整租',
    'rent': 3900,
  },
  {
    'id': '03',
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/29ea8beb782747326a06cdada1f58a18/640x420c.jpg?t=1',
    'des': '江城国际瑞景苑 | 精装两房 超高性价比 | 精装两房 超高性价比',
    'location': '银湖公馆/毛坯两房',
    'tag': '押一付一',
    'rent': 5100,
  },
  {
    'id': '04',
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/d849bada73cad28ff71c6938cda79a60/640x420c.jpg?t=1',
    'des': '附小萃文！中央城精装两房 | 楼层视野开阔 | 附小萃文！中央城精装两房 ',
    'location': '精装两房/超高性价比',
    'tag': '短租',
    'rent': 4650,
  },
  {
    'id': '05',
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/a1220333e89660c94a70de95786c06e1/640x420c.jpg?t=1',
    'des': '附小萃文！中央城精装两房 | 楼层视野开阔 | 附小萃文！中央城精装两房 ',
    'location': '精装两房/超高性价比',
    'tag': '直租',
    'rent': 3780,
  },
  {
    'id': '06',
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/c75b4f2c3418d78cd1a65e5efef72416/640x420c.jpg?t=1',
    'des': '附小萃文！中央城精装两房 | 楼层视野开阔 | 附小萃文！中央城精装两房 ',
    'location': '精装两房/超高性价比',
    'tag': '急租',
    'rent': 5200,
  },
  {
    'id': '07',
    'imgsrc':
        'https://pic1.ajkimg.com/display/ajk/0aa0973d8a2f46e6bb39451a3ef85c60/640x420c.jpg?t=1',
    'des': '附小萃文！中央城精装两房 | 楼层视野开阔 | 附小萃文！中央城精装两房 ',
    'location': '精装两房/超高性价比',
    'tag': '有空调',
    'rent': 3600,
  },
];

class HouseList extends StatelessWidget {
  final List<Map> houseItems;
  const HouseList({Key? key, this.houseItems = defaultHouseItems})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Expanded(
                child: ListView.builder(
                    itemCount: this.houseItems.length,
                    itemBuilder: (context, index) =>
                        HouseItem(item: this.houseItems[index])))));
  }
}
