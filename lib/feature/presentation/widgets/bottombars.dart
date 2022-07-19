import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nef_app/feature/presentation/widgets/texts.dart';

import '../../../common/app_colors.dart';
import '../pages/home_page/home_page.dart';
import '../pages/profile_page/main/profile_page.dart';

class BotoomNefBar extends StatelessWidget {

  String routeName;
  BotoomNefBar({
    Key? key,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(6),
        topLeft: Radius.circular(6),
      ),
      child: Container(
        height: 97,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100))),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iconBottom(
                  'Main',
                  'assets/icons/home.svg',
                  (() {
                    if (routeName == HomePage.routeName) {
                      return true;
                    }
                    return false;
                  }()),
                  onTap: () => {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                HomePage(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        )
                      }),
              iconBottom(
                  'Online booking', 'assets/icons/tab-bar-phase.svg',
                  false
                  //   (() {
                  //   if (routeName == BookingPage.routeName) {
                  //     return true;
                  //   }
                  //   return false;
                  // }()),
                  ,
                  onTap: () => {
                    //todo Go to Online booking.
                        // Navigator.pushReplacement(
                        //   context,
                        //   PageRouteBuilder(
                        //     pageBuilder: (context, animation1, animation2) =>
                        //         HomePage(),
                        //     transitionDuration: Duration.zero,
                        //     reverseTransitionDuration: Duration.zero,
                        //   ),
                        // )
                      }),
              iconBottom('Profile', 'assets/icons/user.svg',
                  (() {
                    if (routeName == ProfilePage.routeName) {
                      return true;
                    }
                    return false;
                  }()),
                  onTap: () => {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                ProfilePage(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        )
                      }),
            ],
          ),
        ),
      ),
    );
  }

  Column iconBottom(title, asset_icon, isActive, {required Function onTap}) {
    return Column(
      children: [
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.only(
            top: 16,
            bottom: 2,
          ),
          child: IconButton(
            icon: SvgPicture.asset(
              asset_icon,
              color: (() {
                if (isActive) {
                  return AppColors.Primary2;
                }
                return AppColors.Grey1;
              }()),
            ),
            onPressed: () {
              onTap();
            },
            padding: EdgeInsets.zero,
          ),
        ),
        Texts().small2_regular(title,
            color: (() {
              if (isActive) {
                return AppColors.Primary2;
              }
              return AppColors.Grey1;
            }()))
      ],
    );
  }
}
