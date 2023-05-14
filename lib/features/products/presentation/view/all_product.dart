import 'package:flutter/material.dart';
import 'package:kw_store/features/products/presentation/view/widgets/product_body.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductBody(),
    );
  }
}
