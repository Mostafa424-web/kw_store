import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kw_store/features/home/presentation/view/product_details.dart';
import 'package:kw_store/features/home/presentation/view/widget/custom_error.dart';
import 'package:kw_store/features/main/presentation/manager/app_cubit/app_cubit.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/services_locator.dart';
import '../../../../home/data/repos/home_repo_impl.dart';
import '../../../../home/presentation/manager/products_cubit/product_cubit.dart';
import '../../../../home/presentation/manager/products_cubit/product_states.dart';
import 'image_product.dart';
import 'name_product.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductCubit(getIt.get<HomeRepoImpl>())..fetchProduct(),
      child:
          BlocBuilder<ProductCubit, ProductsStates>(builder: (context, state) {
        if (state is ProductsSuccess) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductDetails(),
                ),
              );
            },
            child: Row(
              children: [
                Stack(
                  children: [
                    const ImageProduct(
                      image: AssetsData.iphoneImage,
                    ),
                    IconButton(
                      padding: const EdgeInsets.only(left: 120),
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.heart,
                      ),
                    ),
                    NameProduct(
                      nameProduct: state.products[1].name ?? '',
                    ),
                  ],
                ),
                AppCubit().buildSizedWidth(29),
                Stack(
                  children: [
                    const ImageProduct(
                      image: AssetsData.laptopImage,
                    ),
                    IconButton(
                      padding: const EdgeInsets.only(left: 120),
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.heart,
                      ),
                    ),
                    NameProduct(
                      nameProduct: state.products[0].name ?? '',
                    ),
                  ],
                ),
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
