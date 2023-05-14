import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import '../../../../products/presentation/view/all_product.dart';

class TabsHome extends StatelessWidget {
  const TabsHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: 200,
      height: 300,
      child: Directionality(
        textDirection: TextDirection.rtl,
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
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
