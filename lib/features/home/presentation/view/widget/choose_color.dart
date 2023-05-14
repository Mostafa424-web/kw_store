import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../main/presentation/manager/app_cubit/app_cubit.dart';

class ChooseColor extends StatelessWidget {
  const ChooseColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 40,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black12, width: 2),
        ),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return SizedBox(
                    width: double.infinity,
                    height: 270,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Text(
                            'اللون',
                            textAlign: TextAlign.right,
                            style: Styles.textStyle16,
                          ),
                        ),
                        AppCubit.get(context).buildSizedHeight(14),
                      ],
                    ),
                  );
                });
          },
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    'اللون',
                    style: Styles.textStyle14,
                  ),
                ),
                Icon(FontAwesomeIcons.angleDown)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
