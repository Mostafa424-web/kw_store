import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/styles.dart';
import '../../model/companies.dart';
import '../company_details.dart';

class CompanyListView extends StatelessWidget {
  const CompanyListView({
    super.key,
    required this.companies,
  });

  final List<Company> companies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 70,
              child: Card(
                child: Center(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        (context),
                        MaterialPageRoute(
                          builder: (context) => CompanyDetails(
                            companyImage: companies[index].image,
                            companyName: companies[index].name,
                          ),
                        ),
                      );
                    },
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '349+',
                          style: Styles.textStyle10,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    leading: Image.asset(
                      companies[index].image,
                      width: 36,
                      height: 36,
                    ),
                    title: Text(
                      companies[index].name,
                      style: Styles.textStyle16,
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 2,
              endIndent: MediaQuery.of(context).size.width,
            );
          },
          itemCount: companies.length),
    );
  }
}
