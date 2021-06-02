import 'package:flutter/material.dart';

class SearchIpt extends StatelessWidget {
  const SearchIpt({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 34,
        margin: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(Radius.circular(17))),
        child: TextField(
          decoration: InputDecoration(
              // contentPadding 使得TextField内文字水平居中
              contentPadding: const EdgeInsets.only(left: 0),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                size: 16.0,
                color: Colors.grey[600],
              ),
              suffixIcon:
                  Icon(Icons.close, size: 16.0, color: Colors.grey[600]),
              enabledBorder: InputBorder.none,
              hintText: '请输入关键字...',
              hintStyle: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              )),
        ),
      ),
    );
  }
}
