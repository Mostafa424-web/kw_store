import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ExpandedText extends StatelessWidget {
  const ExpandedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ExpansionTile(
            title: Text(
              'تفاصيل المنتج',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
            ),
            children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: Text(
                  '''
              Brand 	Apple
              Wireless carrier Unlocked for All Carriers
              Memory storage capacity 	256 GB
              Screen size 	6.1 Inches
              Form factor 	Slate
              Model year 2022
              Item weight 0.38 Kilograms
                             ''',
                  softWrap: true,
                  style: Styles.textStyle12.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
            //          collapsed: Container(),
            //          expanded: Directionality(
            //            textDirection: TextDirection.ltr,
            //            child: Text(
            //              '''
            // Brand 	Apple
            // Wireless carrier Unlocked for All Carriers
            // Memory storage capacity 	256 GB
            // Screen size 	6.1 Inches
            // Form factor 	Slate
            // Model year 2022
            // Item weight 0.38 Kilograms
            //                ''',
            //              softWrap: true,
            //              style: Styles.textStyle12.copyWith(
            //                fontWeight: FontWeight.w400,
            //                fontSize: 13,
            //              ),
            //            ),
            //          ),
          ),
        ),
      ),
    );
  }
}
