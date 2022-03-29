import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  final urlImages = [
    'https://vodovoz.ru/upload/iblock/29a/29ac65985e8a213ccfcc3003cc3e452f.jpg',
    'https://img.freepik.com/free-vector/pure-mineral-water-ad-with-bottle-close-up-on-the-left-side-and-smaller-bottle-on-the-right-side-snow-mountain-background_317810-1484.jpg',
    'https://vodovoz.ru/upload/iblock/29a/29ac65985e8a213ccfcc3003cc3e452f.jpg',
    'https://img.freepik.com/free-vector/pure-mineral-water-ad-with-bottle-close-up-on-the-left-side-and-smaller-bottle-on-the-right-side-snow-mountain-background_317810-1484.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: const EdgeInsets.symmetric(
                  // horizontal: 5.h
                  ), // расстояние между изображениями
              child: Image.network(
                urlImages[index],
                fit: BoxFit.cover,
              ),
            );
          },
          options: CarouselOptions(
              height: 190,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              enlargeCenterPage: true, // центральная увеичивается
              // viewportFraction: 1, // только 1 картинка видна
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              }),
        ),
        const SizedBox(height: 10),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: urlImages.length,
          effect: const SwapEffect(
            dotHeight: 10,
            dotWidth: 10,
            //  dotColor:
          ),
        )
      ],
    );
  }
}
