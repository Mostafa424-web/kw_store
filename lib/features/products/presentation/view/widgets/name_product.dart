import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kw_store/core/utils/services_locator.dart';
import 'package:kw_store/features/home/data/repos/home_repo_impl.dart';
import 'package:kw_store/features/home/presentation/manager/products_cubit/product_cubit.dart';
import 'package:kw_store/features/home/presentation/manager/products_cubit/product_states.dart';
import 'package:kw_store/features/home/presentation/view/widget/custom_error.dart';
import 'package:kw_store/features/products/presentation/view/widgets/price_product.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../main/presentation/manager/app_cubit/app_cubit.dart';
import 'name_company.dart';

class NameProduct extends StatelessWidget {
  const NameProduct({
    super.key,
    required this.nameProduct,
  });

  final String nameProduct;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductCubit(getIt.get<HomeRepoImpl>())..fetchProduct(),
      child:
          BlocBuilder<ProductCubit, ProductsStates>(builder: (context, state) {
        if (state is ProductsSuccess) {
          return Container(
            width: 149,
            height: 100,
            margin: const EdgeInsets.only(top: 128),
            decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8), topLeft: Radius.circular(8))),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 8.0),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Text(
                      nameProduct,
                      style: Styles.textStyle10,
                    ),
                  ),
                ),
                AppCubit().buildSizedHeight(8),
                const Directionality(
                  textDirection: TextDirection.ltr,
                  child: NameCompany(
                    nameCompany: '(شركة زين)',
                    logoCompany: AssetsData.logoZain,
                  ),
                ),
                AppCubit().buildSizedHeight(11),
                PriceProduct(
                  discount: '599 دينار',
                  price: '${state.products[0].price} دينار',
                )
              ],
            ),
          );
        } else if (state is ProductsFailure) {
          return CustomError(error: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
