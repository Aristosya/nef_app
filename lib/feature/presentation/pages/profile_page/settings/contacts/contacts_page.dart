import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../../../common/app_colors.dart';
import '../../../../widgets/appbars.dart';
import '../../../../widgets/texts.dart';

class ContactsPage extends StatelessWidget {
  ContactsPage({super.key});

  String eMail = 'info@nefkazakhstan.com';
  String tel = '+7 (727) 111 22 33';
  static const routeName = '/profile/settings/contacts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars().back_noRight(context, 'Contacts'),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Column(
                children: [
                  buildContactLine(title: eMail,asset_icon: 'assets/icons/email.svg',onTap: sendMail),
                  SizedBox(
                    height: 8.0,
                  ),
                  buildContactLine(title: tel,asset_icon: 'assets/icons/call.svg',onTap: callTo),
                ],
              )),
        ],
      ),
    );
  }

  Ink buildContactLine({required title,required asset_icon,required onTap}) {
    return Ink(
      decoration: BoxDecoration(
        color: AppColors.White,
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => onTap(),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 11, 16, 13),
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(
                          asset_icon,
                          color: AppColors.Primary2,
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 11,
                        ),
                        child: Texts().body1(
                          title,
                          color: AppColors.Secondary,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  sendMail() {
    final url = 'mailto:$eMail';
    launchTo(url);
  }

  callTo() {
    final url = 'tel:$tel';
    launchTo(url);
  }
}

Future launchTo(url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  }
}
