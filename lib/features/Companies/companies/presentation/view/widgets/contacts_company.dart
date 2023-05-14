import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../../../core/utils/assets.dart';

class ContactsCompany extends StatelessWidget {
  const ContactsCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        SizedBox(
          width: width * 0.18,
          height: height * 0.08,
          child: IconButton(
            onPressed: () {
              _launchInBrowser('https://www.pinterest.com/');
            },
            icon: Image.asset(
              AssetsData.pinterestImage,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.18,
          height: height * 0.08,
          child: IconButton(
            onPressed: () {
              shareWhatsAppNumber('01015369404');
            },
            icon: Image.asset(
              AssetsData.whatsappImage,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.18,
          height: height * 0.08,
          child: IconButton(
            onPressed: () {
              _launchInBrowser('https://twitter.com/');
            },
            icon: Image.asset(
              AssetsData.twitterImage,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.18,
          height: height * 0.08,
          child: IconButton(
            onPressed: () {
              _launchInBrowser('https://www.instagram.com/');
            },
            icon: Image.asset(
              AssetsData.instagramImage,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.18,
          height: height * 0.08,
          child: IconButton(
            onPressed: () {
              _launchInBrowser(
                  'https://www.facebook.com/profile.php?id=100090574053947&mibextid=ZbWKwL');
            },
            icon: Image.asset(
              AssetsData.facebookImage,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launchUrlString(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  void shareWhatsAppNumber(String phoneNumber) async {
    final link = 'https://wa.me/$phoneNumber';
    await launch(link);
  }
}
