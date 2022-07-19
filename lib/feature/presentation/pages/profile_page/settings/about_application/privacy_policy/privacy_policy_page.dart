import 'package:flutter/material.dart';
import 'package:nef_app/common/text.dart';
import '../../../../../../../../../../common/app_colors.dart';
import '../../../../../widgets/appbars.dart';
import '../../../../../widgets/texts.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  static const routeName = '/profile/settings/about/privacy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBars().close_title(context,title: 'Privacy Policy'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0,bottom: 40),
            child: Texts().body1(Example.text,color: AppColors.Secondary,),
          ),
        )
    );
  }
}
