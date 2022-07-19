import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../common/app_colors.dart';
import '../../../../widgets/appbars.dart';
import '../../../../widgets/texts.dart';
import '../About_application/about_application_page.dart';
import '../Contacts/contacts_page.dart';
import '../FAQ/faq_page.dart';
import '../language/language_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static const routeName = '/profile/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars().back_noRight(context, 'Settings'),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Ink(
                decoration: BoxDecoration(
                  color: AppColors.White,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Column(
                  children: [
                    buildLine(context,title: 'Language', addDevider: true, routeName: LanguagePage.routeName),
                    buildLine(context,title: 'Contacts', addDevider: true, routeName: ContactsPage.routeName),
                    buildLine(context,title: 'FAQ', addDevider: true, routeName: FaqPage.routeName),
                    buildLine(context,title: 'About application', addDevider: false, routeName: AboutPage.routeName),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  buildLine(BuildContext context, {required String title,required routeName, required bool addDevider}) {
    return  Column(
        children: [
          InkWell(
            onTap: () => {Navigator.pushNamed(context, routeName)},
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 11,
                      ),
                      child: Texts().body1(title,color: AppColors.Secondary,)
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.fromLTRB(0,10,8,10),
                      padding:
                          EdgeInsets.fromLTRB(9,6,8,6),
                      child: SvgPicture.asset(
                        'assets/icons/chevron-right.svg',
                        color: AppColors.Primary2,
                        semanticsLabel: 'Arrow-next',
                      ),
                    ),
                  ],
                ),
                ((){
                  if (addDevider){return Container(
                    height: 1,
                    color: AppColors.Grey2,
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                  ); }
                  return SizedBox.shrink();
                }())

              ],
            ),
          ),
        ],
    );
  }
}
