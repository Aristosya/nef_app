import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../common/app_colors.dart';
import '../../../widgets/appbars.dart';
import '../../../widgets/bottombars.dart';
import '../../../widgets/texts.dart';
import '../../home_page/home_page.dart';
import '../booking_history/main/booking_history_page.dart';
import '../payment_method/main/payment_method_page.dart';
import '../settings/main/settings_page.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static const routeName = '/profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool showEdit = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() {
          if (showEdit) {
            showEdit = !showEdit;
          }
        }),
      },
      child: Scaffold(
        appBar: AppBars().right_noLeft('Profile',
            asset_icon: 'assets/icons/notification.svg',
            color_icon: AppColors.Grey1, onTap_icon: null,),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
              child: Container(
                height: 116,
                decoration: BoxDecoration(
                  color: AppColors.White,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 16, 8),
                      child: Stack(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                customBorder: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                onTap: () => {
                                  setState(() {
                                    showEdit = !showEdit;
                                  }),
                                },
                              ),
                            ),
                          ),
                          (() {
                            if (showEdit) {
                              return showEditWidget();
                            }
                            return SizedBox.shrink();
                          }()),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts().heading3('John Doe', color: AppColors.Primary1),
                        Texts().small1_medium('johndoe@gmail.com',
                            color: AppColors.Grey1),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
              child: Ink(
                height: 133,
                decoration: BoxDecoration(
                  color: AppColors.White,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    buildLine(context,routeName: PaymentPage.routeName, asset_icon: 'assets/icons/credit-card.svg', title: 'Payment method', addDevider: true),
                    buildLine(context,routeName: BookingHistoryPage.routeName, asset_icon: 'assets/icons/clipboard.svg', title: 'Booking history',addDevider: true),
                    buildLine(context,routeName: SettingsPage.routeName, asset_icon: 'assets/icons/settings.svg', title: 'Settings',addDevider: false),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: InkWell(
                //todo Go to log out
                onTap: () => {},
                child: Texts().body2('Log out', color: AppColors.Error),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BotoomNefBar(
          routeName: ProfilePage.routeName,
        ),
      ),
    );
  }

  InkWell buildLine(BuildContext context, {required routeName, required asset_icon, required title, required bool addDevider}) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, routeName)},
      child: Column(
        children: [
          SizedBox(
            height: 43,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 12, 16, 12),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset(
                      asset_icon,
                      color: AppColors.Primary2,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 11),
                    child:Texts().body1(title,color: AppColors.Secondary)
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(9, 6, 8, 6),
                      child: SvgPicture.asset(
                        'assets/icons/chevron-right.svg',
                        color: AppColors.Primary2,
                        semanticsLabel: 'Arrow-right',
                        width: 7,
                        height: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ((){
            if(addDevider){
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: AppColors.Grey2,
                  ),
                ),
              );
            }
            return SizedBox.shrink();
          }())
        ],
      ),
    );
  }

  Widget showEditWidget() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 100,
          height: 51,
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            // todo Go to edit image
            onTap: () => {},
            child: Container(
              width: 100,
              height: 49,
              decoration: BoxDecoration(
                color:
                AppColors.Secondary.withOpacity(
                    0.6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                shape: BoxShape.rectangle,
              ),
              child: Center(
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    'assets/icons/edit-alt.svg',
                    color: AppColors.Primary2,
                    width: 15,
                    height: 15,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
