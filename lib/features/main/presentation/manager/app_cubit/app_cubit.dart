import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Companies/companies/presentation/view/about_us.dart';
import '../../../../Companies/companies/presentation/view/companies.dart';
import '../../../../home/presentation/view/home_screen.dart';
import '../../../../offers/presentation/view/favourites.dart';
import 'app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  buildSizedHeight(double height) {
    return SizedBox(
      height: height,
    );
  }

  buildSizedWidth(double width) {
    return SizedBox(
      width: width,
    );
  }

  navigateAndPop(Widget widget, context) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => widget), (route) => false);
  }

  navigateTo(Widget widget, context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
        currentIndex: screenIndex,
        onTap: (index) {
          changeBottomNavBar(index);
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xffCCCCCC),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'الرئيسية'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart), label: 'المفضلة'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'الشركات'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/img.png')),
              label: 'عن التطبيق')
        ]);
  }

  int screenIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const FavouritesScreen(),
    const AboutUs(),
    const Companies(),
  ];
  void changeBottomNavBar(int index) {
    screenIndex = index;
    if (screenIndex == 0) {
      const HomeScreen();
    } else if (screenIndex == 1) {
      const FavouritesScreen();
    } else if (screenIndex == 2) {
      const AboutUs();
    } else {
      const Companies();
    }

    emit(BottomNavStates());
  }
}
