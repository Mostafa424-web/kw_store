import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          gradient: LinearGradient(colors: [Colors.black, Colors.white])),
      child: Row(
        children: [
          const Expanded(
            child: ListTile(
              title: Padding(
                padding: EdgeInsets.only(top: 30.0, left: 25, bottom: 6),
                child: Text(
                  'BLACK FRIDAY',
                  style: Styles.textStyle20,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 25.0, bottom: 29),
                child: Text(
                  '30% off for all items',
                  style: Styles.textStyle16,
                ),
              ),
            ),
          ),
          Image.asset(
            AssetsData.handFreeImage,
            width: 105,
            height: 120,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
