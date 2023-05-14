import 'package:flutter/material.dart';
import 'package:kw_store/core/utils/assets.dart';
import 'package:kw_store/features/on_boarding/presentation/view/widget/skip.dart';

import 'widget/text_container.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AssetsData.onBoarding1Image),
          const SkipWidget(),
           const TextContainer(
             text: 'تسوق اون لاين',
           )
        ],
      ),
    );
  }
}

