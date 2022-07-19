import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nef_app/feature/presentation/widgets/appbars.dart';
import 'package:nef_app/feature/presentation/widgets/texts.dart';

import '../../../../../../common/app_colors.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  static const routeName = '/profile/settings/language';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars().back_noRight(context, 'Language'),
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
                    buildLanguageLine(isChoosed: true, onTap: null, language: 'English', addDevider: true),
                    buildLanguageLine(isChoosed: false, onTap: null, language: 'Русский', addDevider: true),
                    buildLanguageLine(isChoosed: false, onTap: null, language: 'Türkçe', addDevider: true),
                    buildLanguageLine(isChoosed: false, onTap: null, language: 'Қазақ', addDevider: false),
                  ],
                ),
              )),
        ],
      ),
    );
  }

   buildLanguageLine({required String language,required bool isChoosed,required bool addDevider,required onTap}) {
    return Column(
        children: [
          InkWell(
            onTap: () => {onTap()},
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
                      child: Texts().body1(language,color: AppColors.Secondary,)
                    ),
                    ((){
                      if(isChoosed){return Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.fromLTRB(0,11,8,11),
                        padding: EdgeInsets.symmetric(vertical: 4.17, horizontal: 2.5,),
                        child: SvgPicture.asset(
                          'assets/icons/check.svg',
                          color: AppColors.Success,
                        ),
                      );}
                      return SizedBox.shrink();
                    }())

                  ],
                ),
                ((){
                  if(addDevider){
                    return Container(
                      height: 1,
                      color: AppColors.Grey2,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                    );
                  }
                  return SizedBox.shrink();
                }())
              ],
            ),
          ),
        ],
    );
  }
}
