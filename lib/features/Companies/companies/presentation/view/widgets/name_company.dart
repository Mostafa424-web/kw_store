import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class NameCompany extends StatelessWidget {
  const NameCompany({
    super.key,
    required this.nameCompany,
    required this.logoCompany,
  });

  final String nameCompany;
  final String logoCompany;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          logoCompany,
          width: 18,
          height: 18,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          nameCompany,
          style: Styles.textStyle10.copyWith(fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 3),
          decoration: BoxDecoration(
              color: const Color(0xff000000).withOpacity(0.12),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          child: const Text(
            'خصم 20%',
            style: Styles.textStyle6,
          ),
        ),
      ],
    );
  }
}
