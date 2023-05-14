import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/services_locator.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Companies/companies/presentation/view/widgets/name_company.dart';
import '../../../../Companies/companies/presentation/view/widgets/price_product.dart';
import '../../../../main/presentation/manager/app_cubit/app_cubit.dart';
import '../../../data/repos/home_repo_impl.dart';
import '../../manager/offer_event_cubit/offers_cubit.dart';
import '../../manager/offer_event_cubit/offers_states.dart';
import 'custom_error.dart';

class ListOffers extends StatelessWidget {
  const ListOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          OffersCubit(getIt.get<HomeRepoImpl>())..fetchOffers(),
      child: BlocBuilder<OffersCubit, OffersStates>(builder: (context, state) {
        if (state is OffersSuccess) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 210.0,
              height: 88,
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: state.offers.length,
                  separatorBuilder: (context, index) {
                    return AppCubit().buildSizedWidth(10);
                  },
                  itemBuilder: (context, index) {
                    return SizedBox(
                        width: 265.0,
                        height: 88,
                        child: Card(
                          margin: EdgeInsets.zero,
                          child: ListTile(
                            leading: AspectRatio(
                              aspectRatio: 2.5 / 4,
                              child: CachedNetworkImage(
                                imageUrl: state.offers[index].image ?? '',
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                            // NetworkImage(state.offers[index].image),
                            title: Padding(
                              padding: const EdgeInsets.only(right: 35.0),
                              child: Text(
                                state.offers[index].name ?? '',
                                style: Styles.textStyle10,
                              ),
                            ),
                            subtitle: Column(
                              children: [
                                AppCubit().buildSizedHeight(8),
                                const NameCompany(
                                  nameCompany: '(شركة فوريوستور)',
                                  logoCompany: 'assets/images/for_you.png',
                                ),
                                AppCubit().buildSizedHeight(10),
                                const PriceProduct(
                                  price: '666',
                                  discount: '599',
                                )
                              ],
                            ),
                          ),
                        ));
                  }),
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
