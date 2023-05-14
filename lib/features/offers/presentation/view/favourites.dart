import 'package:flutter/material.dart';
import 'package:kw_store/features/offers/presentation/view/widget/list_favourites.dart';

import '../../../../core/utils/styles.dart';
import '../../../main/presentation/manager/app_cubit/app_cubit.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AppCubit().buildSizedHeight(25),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                'المفضلة',
                style: Styles.textStyle16,
              ),
            ),
            AppCubit().buildSizedHeight(17),
            const ListTileFavourite()
          ],
        ),
      ),
    );
  }
}
