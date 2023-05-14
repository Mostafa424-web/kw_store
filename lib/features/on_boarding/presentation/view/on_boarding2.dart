import 'package:flutter/material.dart';
import 'package:kw_store/core/utils/assets.dart';

import 'widget/skip.dart';
import 'widget/text_container.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AssetsData.onBoarding2Image),
          const SkipWidget(),
          const TextContainer(
            text: "عروض و خصومات"
          )
        ],
      ),
    );
  }
}




