import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

final networkUriReg = RegExp('^http');
final localUriReg = RegExp('^lib');

class FImage extends StatelessWidget {
  final String src;
  final double width;
  final double height;
  final BoxFit fit;
  const FImage(this.src,
      {Key? key, required this.width, required this.height, required this.fit})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (networkUriReg.hasMatch(src)) {
      return Image(
          width: width,
          height: height,
          fit: fit,
          image: AdvancedNetworkImage(src,
              useDiskCache: true,
              timeoutDuration: Duration(seconds: 20),
              cacheRule: CacheRule(maxAge: const Duration(days: 7))));
    }

    if (localUriReg.hasMatch(src)) {
      return Image.asset(
        src,
        width: width,
        height: height,
        fit: fit,
      );
    }

    /*
     * 开发环境时测试
     */
    assert(false, '图片地址错误');
    return Container();
  }
}
