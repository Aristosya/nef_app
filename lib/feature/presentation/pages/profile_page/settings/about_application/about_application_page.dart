import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nef_app/feature/presentation/pages/profile_page/settings/about_application/privacy_policy/privacy_policy_page.dart';

import '../../../../../../common/app_colors.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static const routeName = '/profile/settings/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 44.0,
        leading: Container(
          width: 24,
          height: 24,
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/chevron-left.svg',
              color: AppColors.Primary2,
              semanticsLabel: 'Arrow-back',
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          'About application',
          style: TextStyle(
              color: AppColors.Secondary,
              fontWeight: FontWeight.w500,
              fontFamily: 'SFProDisplay',
              fontSize: 17),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.Background1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.162561576),
              Padding(
                padding: EdgeInsets.only(left: 84, right: 83, bottom: 32),
                child: SvgPicture.asset(
                  height: 212,
                  width: 208,
                  'assets/icons/logo-nef.svg',
                  semanticsLabel: 'Logo application',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 81,
                  right: 81,
                ),
                child: Text(
                  'Version of application v.3.13.3',
                  style: TextStyle(
                      color: AppColors.Grey1,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SFProDisplay',
                      fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 50,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                bottomButton(AppColors.Primary2, 'Rate app', AppColors.White,
                    FontWeight.w600,
                  function: () => {},
                ),
                bottomButton(Colors.transparent, 'Privacy policy',
                    AppColors.Secondary, FontWeight.w400,
                  function: () => {Navigator.pushNamed(context, PrivacyPage.routeName)},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bottomButton(buttonColor, text, textColor, textWeight, {required Function function}) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: InkWell(
        onTap: () { function();},
        child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
              color: buttonColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
              child: Center(
                child: Text(text,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: textWeight,
                      fontFamily: 'SFProDisplay',
                      fontSize: 17),
                ),),
              ),
            ),
          ),
    );
  }
}
