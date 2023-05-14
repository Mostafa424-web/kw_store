import 'package:flutter/material.dart';
import 'package:kw_store/features/Companies/companies/presentation/view/widgets/companies_list_view.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../main/presentation/manager/app_cubit/app_cubit.dart';
import '../model/companies.dart';

class Companies extends StatelessWidget {
  const Companies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Company> companies = [
      Company('اكسايت', 'assets/images/x-cite.png'),
      Company('يوريكا الكويت', 'assets/images/eureka.png'),
      Company('بيست اليوسفي', 'assets/images/best.png'),
      Company('زين', 'assets/images/zain.png'),
      Company('اوريدو الكويت', 'assets/images/au_redo.png'),
      Company('فوريوستور', 'assets/images/4u_store.png'),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 24.0, left: 24.0, top: 37),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            AppCubit().buildSizedHeight(30),
            const Text(
              'الشركات',
              style: Styles.textStyle18,
            ),
            CompanyListView(companies: companies),
          ],
        ),
      ),
    );
  }
}
