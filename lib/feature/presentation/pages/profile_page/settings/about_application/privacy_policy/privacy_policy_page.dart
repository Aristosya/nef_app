import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nef_app/common/text.dart';
import '../../../../../../../../../../common/app_colors.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  static const routeName = '/profile/settings/about/privacy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 44.0,
          leading: SizedBox.shrink(),
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/close.svg',
                color: AppColors.Primary2,
                semanticsLabel: 'Close page',
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          elevation: 0.0,
          backgroundColor: AppColors.Background1,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0,bottom: 40),
            child: Text(
              Example.text,
              style: TextStyle(
                  color: AppColors.Secondary,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'SFProDisplay',
                  fontSize: 15),
            ),
          ),
        )
    );
  }
}
