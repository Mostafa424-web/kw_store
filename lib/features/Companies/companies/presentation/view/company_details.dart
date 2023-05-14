import 'package:flutter/material.dart';
import 'package:kw_store/features/Companies/companies/presentation/view/widgets/contacts_company.dart';
import 'package:kw_store/features/main/presentation/manager/app_cubit/app_cubit.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/view/widget/tabs.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails(
      {Key? key, required this.companyName, required this.companyImage})
      : super(key: key);

  final String companyName;
  final String companyImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Directionality(
              textDirection: TextDirection.ltr,
              child: Align(
                alignment: Alignment.topLeft,
                child: BackButton(),
              ),
            ),
            AppCubit().buildSizedHeight(30),
            Center(
              child: Image.asset(
                companyImage,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                companyName,
                style: Styles.textStyle24,
              ),
            ),
            AppCubit().buildSizedHeight(30),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                ' عن الشركة',
                style: Styles.textStyle16,
              ),
            ),
            AppCubit().buildSizedHeight(16),
            const Padding(
              padding: EdgeInsets.only(left: 44.0, bottom: 20),
              child: Text(
                'يعد اكسايت الغانم للالكترونيات أكبر موزع للالكترونيات في الكويت ويضم العديد من العلامات التجارية من بينها ما يفوق الـ٣٠٠ علامة تجارية عالمية. أما شركة صناعات الغانم التي يندرج تحتها اكسايت فهي واحدة من أكبر شركات القطاع الخاص في منطقة الخليج. وهي تمارس أنشطتها المتعددة في ٤٠ دولة وفي أكثر من ٣٠ مجال.',
                style: Styles.textStyle12,
              ),
            ),
            AppCubit().buildSizedHeight(20),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                'تابعنا على',
                style: Styles.textStyle16,
              ),
            ),
            const ContactsCompany(),
            AppCubit().buildSizedHeight(20),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                'المنتجات',
                style: Styles.textStyle16,
              ),
            ),
            AppCubit().buildSizedHeight(15),
            const TabsHome(),
          ],
        ),
      ),
    );
  }
}
