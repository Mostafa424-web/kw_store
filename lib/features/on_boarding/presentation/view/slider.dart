import 'package:flutter/material.dart';
import 'package:kw_store/features/on_boarding/presentation/view/on_boarding.dart';
import 'package:kw_store/features/on_boarding/presentation/view/on_boarding3.dart';
import 'package:kw_store/features/on_boarding/presentation/view/widget/next_icon.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boarding2.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

final controller = PageController();

class _SliderScreenState extends State<SliderScreen> {
  final List<Widget> pages = [
    const OnBoarding(),
    const OnBoarding2(),
    const OnBoarding3()
  ];

  final List<Widget> list = [
    const OnBoarding(),
    const OnBoarding2(),
    const OnBoarding3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: const SlideEffect(
                    spacing: 8.0,
                    radius: 2.0,
                    dotWidth: 38.0,
                    dotHeight: 6.0,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 1.5,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.black),
              ),
              const SizedBox(
                height: 24,
              ),
              const NextIcon()
            ],
          ),
        ),
      ),
    );
  }
}
