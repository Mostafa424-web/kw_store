import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../main/presentation/manager/app_cubit/app_cubit.dart';

class CompanyProduct extends StatelessWidget {
  const CompanyProduct({
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
        Text(
          '800 دينار',
          style: Styles.textStyle16.copyWith(
              color: const Color(0xff000000), fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        Text(
          nameCompany,
          style: Styles.textStyle16.copyWith(
              color: const Color(0xff202020), fontWeight: FontWeight.w700),
        ),
        AppCubit().buildSizedWidth(6),
        Image.asset(
          logoCompany,
          width: 42,
          height: 42,
        ),
      ],
    );
  }
}
