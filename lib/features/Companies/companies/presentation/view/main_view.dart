import 'package:flutter/material.dart';

import 'about_us.dart';
import 'companies.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const AboutUs(),
      const Companies(),
    ];

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          changeBottomNavBar(index);
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xffCCCCCC),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'الشركات'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/img.png'),
              ),
              label: 'عن التطبيق'),
        ],
      ),
    );
  }

  int currentIndex = 0;
  void changeBottomNavBar(int index) {
    currentIndex = index;
    if (currentIndex == 0) {
      const AboutUs();
    } else if (currentIndex == 1) {
      const Companies();
    }
    setState(() {});
  }
}
