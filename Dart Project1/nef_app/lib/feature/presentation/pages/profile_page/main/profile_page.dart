import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../common/app_colors.dart';
import '../../home_page/home_page.dart';
import '../payment_method/main/payment_method_page.dart';
import '../settings/main/settings_page.dart';

// TO NON ADAPTIVE SCREEN JUST UNCOMMENT 'width:343'

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
        appBar: AppBar(
          toolbarHeight: 44.0,
          title: Center(
            child: Text(
              'Profile',
              style: TextStyle(
                  color: AppColors.Secondary,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SFProDisplay',
                  fontSize: 17),
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
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
              child: Container(
                // width: 343,
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
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                customBorder: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(100))
                                ),
                                onTap: () => {
                                  setState(() {
                                    showEdit = !showEdit;
                                  }),},
                              ),
                            ),
                          ),
                          (() {
                            if (showEdit) {
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
                                      onTap: () => {print('Edited')},
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
                                            topLeft: Radius.circular(0),
                                            topRight: Radius.circular(0),
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
                                              semanticsLabel: 'Edit',
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
                        Text(
                          'John Doe',
                          style: TextStyle(
                            color: AppColors.Primary1,
                            fontFamily: 'SFProDisplay',
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'johndoe@gmail.com',
                          style: TextStyle(
                            color: AppColors.Grey1,
                            fontFamily: 'SFProDisplay',
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
              child: Ink(
                // width: 343,
                height: 133,
                decoration: BoxDecoration(
                  color: AppColors.White,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () =>
                          {Navigator.pushNamed(context, PaymentPage.routeName)},
                      child: Column(
                        children: [
                          SizedBox(
                            // width: 343,
                            height: 43,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 12, 16, 12),
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: SvgPicture.asset(
                                      'assets/icons/credit-card.svg',
                                      color: AppColors.Primary2,
                                      semanticsLabel: 'Payment',
                                      width: 16.67,
                                      height: 13.33,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 11, 0, 11),
                                    child: Text(
                                      'Payment method',
                                      style: TextStyle(
                                        color: AppColors.Secondary,
                                        fontFamily: 'SFProDisplay',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 8, 0),
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          9, 6, 8, 6),
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
                          Container(
                            width: 327,
                            height: 1,
                            decoration: BoxDecoration(
                              color: AppColors.Grey2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      //todo: go to Booking history
                      onTap: () => {},
                      child: Column(
                        children: [
                          SizedBox(
                            // width: 343,
                            height: 43,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 12, 16, 12),
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: SvgPicture.asset(
                                      'assets/icons/clipboard.svg',
                                      color: AppColors.Primary2,
                                      semanticsLabel: 'Booking',
                                      width: 13.33,
                                      height: 16.67,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 11, 0, 11),
                                    child: Text(
                                      'Booking history',
                                      style: TextStyle(
                                        color: AppColors.Secondary,
                                        fontFamily: 'SFProDisplay',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 8, 0),
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          9, 6, 8, 6),
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
                          Container(
                            width: 327,
                            height: 1,
                            decoration: BoxDecoration(
                              color: AppColors.Grey2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => {Navigator.pushNamed(context, SettingsPage.routeName)},
                      child: SizedBox(
                        // width: 343,
                        height: 45,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 12, 16, 12),
                              child: SizedBox(
                                width: 20,
                                height: 20,
                                child: SvgPicture.asset(
                                  'assets/icons/settings.svg',
                                  color: AppColors.Primary2,
                                  semanticsLabel: 'Settings',
                                  width: 16.67,
                                  height: 16.67,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 11, 0, 11),
                                child: Text(
                                  'Settings',
                                  style: TextStyle(
                                    color: AppColors.Secondary,
                                    fontFamily: 'SFProDisplay',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      9, 6, 8, 6),
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
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: InkWell(
                //todo Go to log out
                onTap: () => {},
                child: Text(
                  'Log out',
                  style: TextStyle(
                    color: AppColors.Error,
                    fontFamily: 'SFProDisplay',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(6),
            topLeft: Radius.circular(6),
          ),
          child: Container(
            height: 97,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
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
                            'assets/icons/home.svg',
                            color: AppColors.Grey1,
                            semanticsLabel: 'Home',
                            width: 25,
                            height: 23.75,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        HomePage(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ),
                            );
                          },
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      Text(
                        'Main',
                        style: TextStyle(
                            color: AppColors.Grey1,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            fontFamily: 'SFProDisplay'),
                      ),
                    ],
                  ),
                  Column(
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
                            'assets/icons/tab-bar-phase.svg',
                            color: AppColors.Grey1,
                            semanticsLabel: 'Booking',
                            width: 26.88,
                            height: 21.88,
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      Text(
                        'Online booking',
                        style: TextStyle(
                            color: AppColors.Grey1,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            fontFamily: 'SFProDisplay'),
                      ),
                    ],
                  ),
                  Column(
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
                            'assets/icons/user.svg',
                            color: AppColors.Primary2,
                            semanticsLabel: 'Profile',
                            width: 22.5,
                            height: 25,
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: AppColors.Primary2,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            fontFamily: 'SFProDisplay'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
