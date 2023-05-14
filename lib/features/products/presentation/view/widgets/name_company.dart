import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../main/presentation/manager/app_cubit/app_cubit.dart';

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
        const Spacer(),
        Text(
          nameCompany,
          style: Styles.textStyle10.copyWith(fontWeight: FontWeight.w400),
        ),
        AppCubit().buildSizedWidth(6),
        Image.asset(
          logoCompany,
          width: 18,
          height: 18,
        ),
      ],
    );
  }
}
