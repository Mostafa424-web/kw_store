import 'package:flutter/material.dart';
import 'package:kw_store/features/main/presentation/view/main_view.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../main/presentation/manager/app_cubit/app_cubit.dart';

class SkipWidget extends StatelessWidget {
  const SkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment: Alignment.topRight,
        child: ActionChip(
          label: const Text(
            'تخطى',
            style: Styles.textStyle14,
          ),
          backgroundColor: const Color(0xff000000),
          onPressed: () {
            AppCubit().navigateAndPop(const MainScreen(), context);
          },
        ),
      ),
    );
  }
}
