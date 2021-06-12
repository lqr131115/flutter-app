import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String info;
  final String tip;

  const UserInfo({Key? key, this.info = '登录/注册', this.tip = '登录后可体验更多'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 6,
      color: Colors.blue[200],
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // 头像
          InkWell(
              onTap: () => print('换头像'),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/avatar_no.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
              )),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(this.info,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Text(
                  this.tip,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
