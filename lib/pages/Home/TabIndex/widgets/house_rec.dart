import 'package:flutter/material.dart';

const List<Map> defaultHouseRecItems = [
  {
    'src':
        'https://pic1.58cdn.com.cn/nowater/fangfe/n_v2000cca6cd1c74b6e9ec1d0ef1f7c0653.png',
    'title': '家住回龙观归属的感觉',
    'path': '/login'
  },
  {
    'src':
        'https://pic4.58cdn.com.cn/nowater/fangfe/n_v21d44c2188c574da6b5e3b392aae3f516.png',
    'title': '宜居四五环大都市生活',
    'path': '/login'
  },
  {
    'src':
        'https://pic3.58cdn.com.cn/nowater/fangfe/n_v2c29c63f9470641cbbfa883a3115f4ad2.png',
    'title': '喧嚣三里墩繁华的背后',
    'path': '/login'
  },
  {
    'src':
        'https://pic2.58cdn.com.cn/nowater/fangfe/n_v2a07be6342c5742eb9eac342bd93a9856.png',
    'title': '比邻十号线地铁心连心',
    'path': '/login'
  },
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
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Text(
                          item['title'],
                          maxLines: 2,
                          style: TextStyle(fontSize: 13),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5),
                        child: ClipOval(
                          child: Image.network(
                            item['src'],
                            width: 40,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
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
              crossAxisAlignment: WrapCrossAlignment.center,
              children: _getHouseRecLists(defaultHouseRecItems, context),
            )
          ],
        ));
  }
}
