import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class PriceProduct extends StatelessWidget {
  const PriceProduct({
    super.key,
    required this.price,
    required this.discount,
  });
  final String price;
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Text(discount,
                style: Styles.textStyle10
                    .copyWith(decoration: TextDecoration.lineThrough)),
          ],
        ),
        const Spacer(),
        Text(
          price,
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
