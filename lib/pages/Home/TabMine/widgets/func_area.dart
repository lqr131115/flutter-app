import 'package:flutter/material.dart';

const List<Map> defaultFuncItems = [
  {
    'id': '01',
    'imgsrc': 'assets/images/kanfan_record.png',
    'title': '看房记录',
    'path': '',
  },
  {
    'id': '02',
    'imgsrc': 'assets/images/my_order.png',
    'title': '我的订单',
    'path': '',
  },
  {
    'id': '03',
    'imgsrc': 'assets/images/my_collect.png',
    'title': '我的收藏',
    'path': '',
  },
  {
    'id': '04',
    'imgsrc': 'assets/images/identity_auth.png',
    'title': '身份认证',
    'path': '',
  },
  {
    'id': '05',
    'imgsrc': 'assets/images/contact_us.png',
    'title': '联系我们',
    'path': '',
  },
  {
    'id': '06',
    'imgsrc': 'assets/images/e_contract.png',
    'title': '电子合同',
    'path': '',
  },
  {
    'id': '07',
    'imgsrc': 'assets/images/house_mge.png',
    'title': '房屋管理',
    'path': '',
  },
  {
    'id': '08',
    'imgsrc': 'assets/images/my_wallet.png',
    'title': '我的钱包',
    'path': '',
  },
];

class FuncArea extends StatelessWidget {
  final List<Map> funcItems;

  const FuncArea({Key? key, this.funcItems = defaultFuncItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: Wrap(
        children: _getFuncs(this.funcItems, context),
      ),
    );
  }
}

//   {'id': '05','imgsrc': 'assets/images/contact_us.png','title': '联系我们','path': '',},
List<Widget> _getFuncs(List<Map> paramsList, BuildContext context) {
  return paramsList
      .map(
        (item) => InkWell(
            onTap: () => print('选择了Func'),
            child: Container(
                width: MediaQuery.of(context).size.width / 3 - 10,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Image.asset(
                        item['imgsrc'],
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Text(
                        item['title'],
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ))),
      )
      .toList();
}
