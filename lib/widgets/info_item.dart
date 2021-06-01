import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  // final Map item;
  final String imgsrc;
  final String des;
  final String from;
  // final DateTime publishTime;
  final String publishTime;

  const InfoItem({
    Key? key,
    required this.imgsrc,
    required this.des,
    this.from = '生活网',
    this.publishTime = '刚刚',
  }) : super(key: key);

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
                  child: Image.network(this.imgsrc,
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.width / 5,
                      fit: BoxFit.fill)),
              // house
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Wrap(
                          children: [
                            Text(
                              this.des,
                              maxLines: 2,
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          this.from,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(170, 170, 170, 0.8),
                          ),
                        ),
                        Text(
                          this.publishTime,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(170, 170, 170, 0.8),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
