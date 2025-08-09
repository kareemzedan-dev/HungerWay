import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hungerway/core/utils/assets_manager.dart';
import 'package:hungerway/features/home/presentation/views/widgets/banar_container.dart';

class bannerSection extends StatefulWidget {
  bannerSection({super.key});

  @override
  State<bannerSection> createState() => _bannerSectionState();
}
class _bannerSectionState extends State<bannerSection> {
  List<String> imageSliders = [
    Assets.assetsImagesCoverBurger,
    Assets.assetsImagesPromoCode,
    Assets.assetsImagesOffer,
  ];

  int _currentIndex = 0;  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return bannerContainer(image: image);
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 200.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollPhysics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        SizedBox(height: 10),
        DotsIndicator(
          dotsCount: imageSliders.length,
          position: _currentIndex.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
