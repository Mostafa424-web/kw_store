import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../main/presentation/manager/app_cubit/app_cubit.dart';
import 'image_product.dart';
import 'name_product.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Row(
            children: [
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
                  const NameProduct(
                    nameProduct:
                        'Lenovo IdeaPad Gaming 3 15.6" 120Hz Gaming Laptop AMD',
                  ),
                ],
              ),
              AppCubit().buildSizedWidth(29),
              Stack(
                children: [
                  const ImageProduct(
                    image: AssetsData.iphone1Image,
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(left: 120),
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.heart,
                    ),
                  ),
                  const NameProduct(
                    nameProduct:
                        'Lenovo IdeaPad Gaming 3 15.6" 120Hz Gaming Laptop AMD',
                  ),
                ],
              ),
            ],
          ),
          AppCubit().buildSizedHeight(12),
          Row(
            children: [
              Stack(
                children: [
                  const ImageProduct(
                    image: AssetsData.airImage,
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(left: 120),
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.heart,
                    ),
                  ),
                  const NameProduct(
                    nameProduct:
                        'Lenovo IdeaPad Gaming 3 15.6" 120Hz Gaming Laptop AMD',
                  ),
                ],
              ),
              AppCubit().buildSizedWidth(29),
              Stack(
                children: [
                  const ImageProduct(
                    image: AssetsData.iphone2Image,
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(left: 120),
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.heart,
                    ),
                  ),
                  const NameProduct(
                    nameProduct:
                        'Lenovo IdeaPad Gaming 3 15.6" 120Hz Gaming Laptop AMD',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
