import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import 'all_products.dart';

class TabsHome extends StatelessWidget {
  const TabsHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: ContainedTabBarView(
        tabBarProperties: const TabBarProperties(
          labelColor: Colors.black,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Color(0xffA7ABB5),
        ),
        tabs: const [
          Text('الكل'),
          Text('جوال'),
          Text('لابتوب'),
          Text('شاحن'),
          Text('ساعة ذكية'),
          Text('كاميرا'),
        ],
        views: [
          const AllProduct(),
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.green),
        ],
      ),
    );
  }
}
