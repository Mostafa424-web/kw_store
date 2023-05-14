import 'package:flutter/material.dart';
import 'package:kw_store/core/utils/styles.dart';

class CustomError extends StatelessWidget {
  const CustomError({Key? key, required this.error}) : super(key: key);

  final String error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          error,
          textAlign: TextAlign.center,
          style: Styles.textStyle20,
        ),
      ),
    );
  }
}
