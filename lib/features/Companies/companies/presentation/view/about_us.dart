import 'package:flutter/material.dart';
import 'package:kw_store/features/Companies/companies/presentation/view/widgets/contacts_company.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../main/presentation/manager/app_cubit/app_cubit.dart';
import 'widgets/about_company.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final controller = ScrollController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          children: [
            const AboutCompany(),
            const ContactsCompany(),
            AppCubit().buildSizedHeight(62),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                'للشكاوي او الاقتراحات',
                style: Styles.textStyle16,
              ),
            ),
            AppCubit().buildSizedHeight(12),
            TextField(
              maxLines: 5,
              scrollController: controller,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                hintText: 'اضافة شكوي او اقتراح',
                hintStyle:
                    Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
            AppCubit().buildSizedHeight(32),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  'ارسال',
                  style: Styles.textStyle16.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
