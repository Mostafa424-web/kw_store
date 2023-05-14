import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../main/presentation/manager/app_cubit/app_cubit.dart';

class ProductDetailsImages extends StatelessWidget {
  const ProductDetailsImages({
    super.key,
    required this.controller,
    required this.images,
  });

  final PageController controller;
  final List<Widget> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF5F5F7),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.40,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              children: const [BackButton(), Spacer(), Icon(Icons.search)],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: PageView.builder(
              controller: controller,
              itemCount: images.length,
              itemBuilder: (_, index) {
                return images[index % images.length];
              },
            ),
          ),
          AppCubit().buildSizedHeight(32),
          SmoothPageIndicator(
            controller: controller,
            count: images.length,
            effect: const SlideEffect(
                spacing: 8.0,
                radius: 5.0,
                dotWidth: 25.0,
                dotHeight: 4.0,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Colors.black),
          ),
        ],
      ),
    );
  }
}
