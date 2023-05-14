import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Companies/companies/presentation/view/widgets/name_company.dart';
import '../../../../Companies/companies/presentation/view/widgets/price_product.dart';
import '../../../../main/presentation/manager/app_cubit/app_cubit.dart';

class ListTileFavourite extends StatelessWidget {
  const ListTileFavourite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.75,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 90),
                child: const Icon(Icons.close_sharp),
              ),
              Expanded(
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: SizedBox(
                    height: 88,
                    width: MediaQuery.of(context).size.width * 0.32,
                    child: ListTile(
                      leading: AspectRatio(
                        aspectRatio: 2.5 / 4,
                        child: Image.asset(
                          AssetsData.iphone2Image,
                        ),
                      ),
                      // NetworkImage(state.offers[index].image),
                      title: const Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          'Apple iPhone 14 Pro (256 GB) - Deep Purple',
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
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: 4,
        separatorBuilder: (context, index) {
          return AppCubit.get(context).buildSizedHeight(10);
        },
      ),
    );
  }
}
