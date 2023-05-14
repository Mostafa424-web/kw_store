import 'package:flutter/material.dart';
import 'package:kw_store/core/utils/assets.dart';
import 'package:kw_store/features/on_boarding/presentation/view/widget/skip.dart';
import 'package:kw_store/features/on_boarding/presentation/view/widget/text_container.dart';


class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AssetsData.onBoarding1Image),
          const SkipWidget(),
          const TextContainer(
            text: 'الدفع الآمن'
          )
        ],
      ),
    );
  }
}


