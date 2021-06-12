import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:zufan/widgets/swiper.dart';

// 1100 * 482
const List<String> defaultAdImages = [
  'http://p0.meituan.net/codeman/33ff80dc00f832d697f3e20fc030799560495.jpg',
  'http://p0.meituan.net/codeman/a97baf515235f4c5a2b1323a741e577185048.jpg',
  'http://p0.meituan.net/codeman/daa73310c9e57454dc97f0146640fd9f69772.jpg',
  'http://p1.meituan.net/codeman/826a5ed09dab49af658c34624d75491861404.jpg',
];

class AdSwiper extends StatelessWidget {
  final List<String> images;

  const AdSwiper({Key? key, this.images = defaultAdImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            this.images[index],
            fit: BoxFit.fitWidth,
          );
        },
        itemCount: this.images.length,
        // autoplay: true,
        scale: 0.8,
        pagination: new SwiperPagination(),
      ),
    );
  }
}
