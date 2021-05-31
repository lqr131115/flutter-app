import 'package:flutter/material.dart';
import 'package:get/get.dart';

const List<Map> defaultNavItems = [
  {'url': 'lib/static/images/zhengzu.png', 'title': '整租', 'path': '/login'},
  {'url': 'lib/static/images/hezu.png', 'title': '合租', 'path': '/login'},
  {'url': 'lib/static/images/duanzu.png', 'title': '短租', 'path': '/login'},
  {'url': 'lib/static/images/zhaoshiyou.png', 'title': '找室友', 'path': '/login'},
  {'url': 'lib/static/images/map.png', 'title': '地图找房', 'path': '/login'},
  {'url': 'lib/static/images/vr.png', 'title': 'VR看房', 'path': '/login'},
];

class IndexNavigator extends StatelessWidget {
  final List<Map> navItems;
  const IndexNavigator({Key? key, this.navItems = defaultNavItems})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        alignment: Alignment.center,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: navItems.length,
            itemBuilder: (context, index) {
              return NavItem(
                item: navItems[index],
              );
            }));
  }
}

class NavItem extends StatelessWidget {
  final Map item;
  const NavItem({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(item['path']),
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                item['url'],
                width: 30,
                height: 30,
                color: Color.fromARGB(180, 23, 158, 238),
              ),
              Text(
                item['title'],
                style: TextStyle(fontSize: 8),
              )
            ],
          ),
        ),
      ),
    );
  }
}
