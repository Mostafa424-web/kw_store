import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kw_store/core/utils/assets.dart';
import 'package:kw_store/core/utils/services_locator.dart';
import 'package:kw_store/features/home/data/repos/home_repo_impl.dart';
import 'package:kw_store/features/home/presentation/manager/offer_event_cubit/offers_cubit.dart';
import 'package:kw_store/features/home/presentation/manager/offer_event_cubit/offers_states.dart';
import 'package:kw_store/features/home/presentation/view/widget/custom_error.dart';
import 'package:kw_store/features/home/presentation/view/widget/tabs.dart';
import 'package:kw_store/features/main/presentation/manager/app_cubit/app_cubit.dart';

import '../../../../core/utils/styles.dart';
import 'widget/list_offers.dart';
import 'widget/list_tile.dart';
import 'widget/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          OffersCubit(getIt.get<HomeRepoImpl>())..fetchOffers(),
      child: BlocBuilder<OffersCubit, OffersStates>(builder: (context, state) {
        if (state is OffersSuccess) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 24, right: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppCubit().buildSizedHeight(12),
                  Image.asset(
                    AssetsData.logoImage,
                    width: 14.0,
                    height: 30,
                  ),
                  AppCubit().buildSizedHeight(31),
                  const Search(),
                  const ListTileWidget(),
                  const TabsHome(),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'عروض مميزة',
                          style:
                              Styles.textStyle14.copyWith(color: Colors.black),
                        ),
                        const Text(
                          'عرض الكل',
                          style: Styles.textStyle10,
                        ),
                      ],
                    ),
                  ),
                  const ListOffers(),
                ],
              ),
            ),
          );
        } else if (state is OffersFailure) {
          print('error');
          return CustomError(error: state.errorMessage);
        } else {
          print(state.toString());
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
