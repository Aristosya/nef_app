import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nef_app/feature/presentation/pages/profile_page/payment_method/widgets/creditcard.dart';

import '../../../../../../common/app_colors.dart';
import '../Contacts/contacts_page.dart';
import '../FAQ/faq_page.dart';
import '../language/language_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static const routeName = '/profile/settings';

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
          'Settings',
          style: TextStyle(
              color: AppColors.Secondary,
              fontWeight: FontWeight.w500,
              fontFamily: 'SFProDisplay',
              fontSize: 17),
        ),
        elevation: 0.0,
        backgroundColor: AppColors.Background1,
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 8,
              ),
              child: Column(
                children: [
                  Ink(
                    decoration: BoxDecoration(
                      color: AppColors.White,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6)),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => {Navigator.pushNamed(context, LanguagePage.routeName)},
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 11,),
                                    child: Text('Language',
                                      style: TextStyle(
                                          color: AppColors.Secondary,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'SFProDisplay',
                                          fontSize: 15),),
                                  ),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.only(
                                        top: 10, bottom: 10, right: 8),
                                    padding: EdgeInsets.only(
                                        top: 6, bottom: 6, right: 8, left: 9),
                                    child: SvgPicture.asset(
                                      'assets/icons/chevron-right.svg',
                                      color: AppColors.Primary2,
                                      semanticsLabel: 'Arrow-next',
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 1,
                                color: AppColors.Grey2,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Ink(
                    decoration: BoxDecoration(
                      color: AppColors.White,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => {Navigator.pushNamed(context, ContactsPage.routeName)},
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 11,),
                                    child: Text('Contacts',
                                      style: TextStyle(
                                          color: AppColors.Secondary,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'SFProDisplay',
                                          fontSize: 15),),
                                  ),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.only(
                                        top: 10, bottom: 10, right: 8),
                                    padding: EdgeInsets.only(
                                        top: 6, bottom: 6, right: 8, left: 9),
                                    child: SvgPicture.asset(
                                      'assets/icons/chevron-right.svg',
                                      color: AppColors.Primary2,
                                      semanticsLabel: 'Arrow-next',
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 1,
                                color: AppColors.Grey2,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Ink(
                    decoration: BoxDecoration(
                      color: AppColors.White,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => {Navigator.pushNamed(context, FaqPage.routeName)},
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 11,),
                                    child: Text('FAQ',
                                      style: TextStyle(
                                          color: AppColors.Secondary,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'SFProDisplay',
                                          fontSize: 15),),
                                  ),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.only(
                                        top: 10, bottom: 10, right: 8),
                                    padding: EdgeInsets.only(
                                        top: 6, bottom: 6, right: 8, left: 9),
                                    child: SvgPicture.asset(
                                      'assets/icons/chevron-right.svg',
                                      color: AppColors.Primary2,
                                      semanticsLabel: 'Arrow-next',
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 1,
                                color: AppColors.Grey2,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Ink(
                    decoration: BoxDecoration(
                      color: AppColors.White,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6)),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => {},
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 11,),
                                    child: Text('About application',
                                      style: TextStyle(
                                          color: AppColors.Secondary,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'SFProDisplay',
                                          fontSize: 15),),
                                  ),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.only(
                                        top: 10, bottom: 10, right: 8),
                                    padding: EdgeInsets.only(
                                        top: 6, bottom: 6, right: 8, left: 9),
                                    child: SvgPicture.asset(
                                      'assets/icons/chevron-right.svg',
                                      color: AppColors.Primary2,
                                      semanticsLabel: 'Arrow-next',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
