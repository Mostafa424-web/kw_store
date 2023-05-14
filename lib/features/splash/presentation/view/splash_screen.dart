import 'package:flutter/material.dart';
import 'package:kw_store/core/utils/assets.dart';
import 'package:kw_store/core/utils/styles.dart';
import 'package:kw_store/features/on_boarding/presentation/view/slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsData.logoImage,
              width: 85.0,
              height: 100,
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'Mobile & Laptop',
              style: Styles.textStyle11,
            )
          ],
        ),
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const SliderScreen()),
          (route) => false);
    });
  }
}
