import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

const  List<String> defaultImages = [
  'http://pic.ziroom.com/oa/upload//upload/20160505/72031462420232590.jpg',
  'http://pic.ziroom.com/oa/upload//upload/20160505/58571462420232929.jpg',
  'http://pic.ziroom.com/oa/upload//upload/20160505/75931462420233221.jpg',
];
// 图片 778 * 405

class FSwiper extends StatelessWidget {
  final List<String> images;
  const FSwiper({Key? key,this.images = defaultImages}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.width * 405 / 778;
    return Container(
      height: _height,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        // autoplay: true,
        scale: 0.8,
        pagination: new SwiperPagination(),
      
      ),
    );
  }
}
