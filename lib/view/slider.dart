import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderP extends StatefulWidget {
  SliderP({Key? key}) : super(key: key);

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  int activeIndex = 0;
  final controller = CarouselController();
  final Images = [
    Image.asset(
      'assets/images/img_1.png',
    ),
    Image.asset(
      'assets/images/img_2.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
              carouselController: controller,
              itemCount: Images.length,
              itemBuilder: (context, index, realIndex) {
                return Images[index];
              },
              options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index))),
          SizedBox(height: 5),
          buildIndicator()
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
            dotWidth: 8, dotHeight: 8, activeDotColor: Color(0xff1d3f79)),
        activeIndex: activeIndex,
        count: Images.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}
