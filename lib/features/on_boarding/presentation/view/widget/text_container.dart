import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
      height: MediaQuery.of(context).size.height / 2,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40))),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 31,
            ),
            Image.asset(
              AssetsData.logoImage,
              width: 46,
              height: 55,
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              'Mobile & Laptop',
              style: Styles.textStyle6,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              text,
              style: Styles.textStyle24,
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 51.0),
              child: Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس ',
                style: Styles.textStyle12,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 51.0),
              child: Text(
                'المساحة، لقد تم توليد هذا النص من مولد النص العربى، ',
                style: Styles.textStyle12,
              ),
            )
          ],
        ),
      ),
    );
  }
}