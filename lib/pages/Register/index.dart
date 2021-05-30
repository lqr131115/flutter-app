import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zufan/widgets/app_icon.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 图标
              AppIcon(),
              // 用户名
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 60,
                      alignment: Alignment.center,
                      child: Icon(Icons.person),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                              // enabledBorder: InputBorder.none,
                              // enabled: false,
                              // disabledBorder: InputBorder.none,  在禁用时有用
                              // helperText: 'help', 提示(左下方)
                              // counterText: 'counter',提示(右下方)
                              hintText: '请输入用户名',
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // 密码
              Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 60,
                        alignment: Alignment.center,
                        child: Icon(Icons.lock),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: '请输入密码',
                                  hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic)),
                            ),
                          )),
                    ],
                  )),
              // 确认密码
              Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 40,
                          height: 60,
                          alignment: Alignment.center,
                          child: Icon(Icons.lock_clock_rounded)),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: '请确认密码',
                                  hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic)),
                            ),
                          )),
                    ],
                  )),

              // 注册-GestureDetector收拾识别组件
              GestureDetector(
                onTap: () => Get.toNamed('/login'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 48.50,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 40),
                        padding: const EdgeInsets.only(left: 130, right: 130),
                        child: Text('注册',
                            style: TextStyle(
                                color: Colors.white, fontSize: 17.50)),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(180, 23, 158, 238),
                            borderRadius: BorderRadius.circular(23.00))),
                  ],
                ),
              ),
              // 已有账号
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('已有账号?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 153, 153, 153),
                            fontSize: 12.50)),
                    InkWell(
                      onTap: () => Get.toNamed('/login'),
                      child: Text('去登录',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 133, 111, 255),
                              fontSize: 12.50)),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
