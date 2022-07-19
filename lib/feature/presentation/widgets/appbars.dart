import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nef_app/feature/presentation/widgets/texts.dart';

import '../../../common/app_colors.dart';

class AppBars {
  double toolbarHeight = 44.0;


  AppBar main() {return AppBar(
      leadingWidth: 74,
      automaticallyImplyLeading: false,
      toolbarHeight: toolbarHeight,
      leading: SizedBox.shrink(),



      /// <ICED-BOX>

      // leading: Container(
      //   margin: const EdgeInsets.only(top: 6.0, left: 16.0, bottom: 6.0),
      //   padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      //   width: 58,
      //   height: 32,
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(6), color: AppColors.Grey2),
      //   child: Text(
      //     '3 000',
      //     style: TextStyle(
      //         fontFamily: 'SFProDisplay',
      //         color: AppColors.Primary2,
      //         fontWeight: FontWeight.w500,
      //         fontSize: 13),
      //   ),
      // ),

      /// </ICED-BOX>

      title: Center(
        child: SizedBox(
          width: 110,
          height: 22,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 82,
                height: 22,
                child: Center(
                  child: Texts().body1('Nef Uptown',color : AppColors.Primary1),
                ),
              ),
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(left: 8.0),
                child: Center(
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => {},
                    icon: SvgPicture.asset(
                      'assets/icons/icon-arrow.svg',
                      color: AppColors.Primary1,
                      semanticsLabel: 'arrow-down',
                      width: 12.5,
                      height: 6.25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: SvgPicture.asset(
            'assets/icons/notification.svg',
            color: AppColors.Grey1,
            semanticsLabel: 'Notification',
            width: 18,
            height: 20,
          ),
        )
      ],
      elevation: 0.0,
      backgroundColor: AppColors.Background1,
    );}
  AppBar back_noRight(BuildContext context, title) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      leading: Container(
        width: 24,
        height: 24,
        child: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/chevron-left.svg',
            color: AppColors.Primary2,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      title: Texts().heading3(title,color: AppColors.Secondary),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: AppColors.Background1,
    );
  }
  AppBar right_noLeft(title, {required asset_icon, required color_icon,required onTap_icon}) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      title: Center(
        child: Texts().heading3(title,color: AppColors.Secondary,)
      ),
      actions: [
        IconButton(
          onPressed: () => {onTap_icon()},
          icon: SvgPicture.asset(
            asset_icon,
            color: color_icon,
            width: 18,
            height: 20,
          ),
        )
      ],
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: AppColors.Background1,
    );
  }
  AppBar close(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      leading: SizedBox.shrink(),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/close.svg',
            color: AppColors.Primary2,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
      elevation: 0.0,
      backgroundColor: AppColors.Background1,
    );
  }
  AppBar close_title(BuildContext context, {required title}) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      leading: SizedBox.shrink(),
      title: Center(
          child: Texts().heading3(title,color: AppColors.Secondary,)
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/close.svg',
            color: AppColors.Primary2,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
      elevation: 0.0,
      backgroundColor: AppColors.Background1,
    );
  }
  AppBar back_right(BuildContext context,{required title,required asset_icon, required color_icon, required onTap_icon,required width_icon,required height_icon}) {return AppBar(
      toolbarHeight: 44.0,
      leading: Container(
        width: 24,
        height: 24,
        child: IconButton(icon:SvgPicture.asset(
          'assets/icons/chevron-left.svg',
          color: AppColors.Primary2,
        ), onPressed: () {Navigator.pop(context) ; },),
      ),
      title: Center(
        child: Texts().heading3(title,color: AppColors.Secondary)
      ),
      actions: [
        IconButton(
          onPressed: () => {onTap_icon()},
          icon: SvgPicture.asset(
            asset_icon,
            color: color_icon,
            width: width_icon,
            height: height_icon,
          ),
        )
      ],
      elevation: 0.0,
      backgroundColor: AppColors.Background1,
    );}
}






