import 'package:flutter/material.dart';

class ImageProduct extends StatelessWidget {
  const ImageProduct({
    super.key,
    required this.image,
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 23),
      // color: const Color(0xffF8F8F8),
      color: const Color(0xffF8F8F8),
      child: Image.asset(
        width: 72,
        height: 89,
        image,
      ),
    );
  }
}
