import 'package:flutter/material.dart';

class CustomRent extends StatelessWidget {
  final double min;
  final double max;

  const CustomRent({Key? key, this.min = 0, this.max = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              '自定价格',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 12),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 10),
                        border: InputBorder.none,
                        hintText: '最低价',
                        hintStyle:
                            TextStyle(fontSize: 14, color: Colors.grey[400])),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 10),
                        border: InputBorder.none,
                        hintText: '最高价',
                        hintStyle:
                            TextStyle(fontSize: 14, color: Colors.grey[400])),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 4,
                  height: 40,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () => print('自定价格完成'),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        '完成',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]),
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
