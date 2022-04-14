import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  final urlImages = [
    'https://img.freepik.com/free-vector/flat-world-water-day-sale-horizontal-banner_23-2149270620.jpg?t=st=1649344139~exp=1649344739~hmac=c88dcdfaab7f2b8dec5413fb938ef7cc56baafd7db7dc8118452b0aa1f04b126&w=1380',
    'https://img.freepik.com/free-vector/flat-world-water-day-sale-horizontal-banner_23-2149280529.jpg?t=st=1649344139~exp=1649344739~hmac=2bcbbe80199560437c688b80c339e7df0d44047d7f7a9e9e18b51fea92d68584&w=1380',
    'https://img.freepik.com/free-vector/gradient-world-water-day-sale-horizontal-banner_23-2149270850.jpg?t=st=1649344139~exp=1649344739~hmac=f3e2726890a855cc6bc198c6b722fdda532ea0cd857de54e8326ab543ca71ab3&w=1380',
    'https://img.freepik.com/free-vector/household-water-filter-purification-pitcher-with-replacement-cartridge-and-full-glass-realistic-advertising-composition-blue-splashes_1284-26867.jpg?t=st=1649344304~exp=1649344904~hmac=12f66a7b838910938f1db77bd76ce63be0eb72710f2925434813501e6078eace&w=996',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            return Image.network(
              urlImages[index],
              fit: BoxFit.cover,
            );
          },
          options: CarouselOptions(
              height: 180.h,
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
        SizedBox(height: 10.h),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: urlImages.length,
          effect: SwapEffect(
            dotHeight: 10.h,
            dotWidth: 10.w,
            //  dotColor:
          ),
        )
      ],
    );
  }
}
