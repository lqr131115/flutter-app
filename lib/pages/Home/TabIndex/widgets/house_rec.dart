import 'package:flutter/material.dart';
import 'package:get/get.dart';

const List<Map> defaultHouseRecItems = [
  {
    'src': 'lib/static/images/zhengzu.png',
    'title': '家住回龙观归属的感觉',
    'path': '/login'
  },
  {
    'src': 'lib/static/images/hezu.png',
    'title': '宜居四五环大都市生活',
    'path': '/login'
  },
  {
    'src': 'lib/static/images/duanzu.png',
    'title': '喧嚣三里墩繁华的背后',
    'path': '/login'
  },
  {'src': 'lib/static/images/map.png', 'title': '比邻十号线地铁心连心', 'path': '/login'},
];

List<Widget> _getHouseRecLists(List<Map> paramsList, BuildContext context) {
  return paramsList
      .map(
        (item) => InkWell(
          onTap: () => print('item'),
          child: Container(
              width: MediaQuery.of(context).size.width / 2 - 8,
              margin: const EdgeInsets.only(bottom: 5),
              padding: const EdgeInsets.all(10),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text(
                        item['title'],
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 13
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          item['src'],
                          width: 40,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                      ))
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
        ),
      )
      .toList();
}

class HouseRecommend extends StatelessWidget {
  final List<Map> houseRecItems;
  const HouseRecommend({Key? key, this.houseRecItems = defaultHouseRecItems})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(238, 238, 238, 0.8),
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '房屋推荐',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () => print('MORE'),
                    child: Text(
                      '更多',
                      style: TextStyle(
                        fontSize: 8,
                        color: Color.fromRGBO(170, 170, 170, 0.8),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Wrap(
              // space --> children水平之间的空隙
              spacing: 5,
              // space --> children垂直之间的空隙
              // runSpacing: 20,
              crossAxisAlignment:WrapCrossAlignment.center,
              children: _getHouseRecLists(defaultHouseRecItems, context),
            )
          ],
        ));
  }
}

