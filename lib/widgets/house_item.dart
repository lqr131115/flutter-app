import 'package:flutter/material.dart';
import 'package:zufan/utils/colors.dart';

const defalutItem = {
  'imgsrc': 'lib/static/images/img_err.png',
  'des': 'des',
  'location': 'location',
  'tag': 'tag',
  'rent': 0.0,
};

class HouseItem extends StatelessWidget {
  final Map item;

  const HouseItem({Key? key, this.item = defalutItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 5,
      margin: const EdgeInsets.only(bottom: 8),
      child: InkWell(
          onTap: () => print('InfoItem'),
          child: Row(
            children: [
              // Image
              Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Image.network(this.item['imgsrc'],
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.width / 5,
                      fit: BoxFit.fill)),
              // Info
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          this.item['des'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14),
                        )),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          this.item['location'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          this.item['tag'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: ColorUtil.randonColor()),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          this.item['rent'].toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          ' 元/月',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.orange,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
