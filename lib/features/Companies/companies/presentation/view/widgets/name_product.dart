import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../products/presentation/view/widgets/name_company.dart';
import '../../../../../products/presentation/view/widgets/price_product.dart';

class NameProduct extends StatelessWidget {
  const NameProduct({
    super.key,
    required this.nameProduct,
  });

  final String nameProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.only(top: 128),
      decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8))),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Text(
              nameProduct,
              style: Styles.textStyle10,
            ),
          ),
          buildSizedHeight(8),
          const NameCompany(
            nameCompany: '(شركة زين)',
            logoCompany: AssetsData.logoZain,
          ),
          buildSizedHeight(11),
          const PriceProduct(
            discount: '599 دينار',
            price: '666 دينار',
          )
        ],
      ),
    );
  }

  SizedBox buildSizedHeight(double h) {
    return SizedBox(
      height: h,
    );
  }
}
