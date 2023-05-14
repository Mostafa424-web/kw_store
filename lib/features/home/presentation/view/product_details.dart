import 'package:flutter/material.dart';
import 'package:kw_store/core/utils/assets.dart';
import 'package:kw_store/core/utils/styles.dart';
import 'package:kw_store/features/home/presentation/view/widget/choose_color.dart';
import 'package:kw_store/features/home/presentation/view/widget/company_product.dart';
import 'package:kw_store/features/home/presentation/view/widget/expanded_text.dart';
import 'package:kw_store/features/home/presentation/view/widget/product_details_images.dart';
import 'package:kw_store/features/main/presentation/manager/app_cubit/app_cubit.dart';

import 'widget/product_rating.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    List<Widget> images = [
      Image.asset(
        AssetsData.iphone1Image,
        width: 156,
        height: 192,
      ),
      Image.asset(
        AssetsData.iphone2Image,
        width: 156,
        height: 192,
      ),
      Image.asset(
        AssetsData.iphone3Image,
        width: 156,
        height: 192,
      ),
    ];

    return Scaffold(
      body: ListView(children: [
        ProductDetailsImages(controller: controller, images: images),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const CompanyProduct(
                  nameCompany: 'شركة اكسايت',
                  logoCompany: AssetsData.logoExcite),
              const Divider(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Apple iPhone 14 Pro (256 GB) - Deep'
                  ' Purple',
                  style: Styles.textStyle16.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
        AppCubit.get(context).buildSizedHeight(12),
        const ProductRating(),
        AppCubit.get(context).buildSizedHeight(19),
        const ExpandedText(),
        // AppCubit.get(context).buildSizedHeight(20),
        const ChooseColor(),
      ]),
    );
  }
}
