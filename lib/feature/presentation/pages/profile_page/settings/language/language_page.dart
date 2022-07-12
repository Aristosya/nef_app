import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nef_app/feature/presentation/pages/profile_page/payment_method/widgets/creditcard.dart';

import '../../../../../../common/app_colors.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  static const routeName = '/profile/settings/language';

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
          'Language',
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
                                    child: Text('English',
                                      style: TextStyle(
                                          color: AppColors.Secondary,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'SFProDisplay',
                                          fontSize: 15),),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: EdgeInsets.only(top: 11, bottom:11, right: 8),
                                    padding: EdgeInsets.symmetric(vertical: 4.17, horizontal:2.5,),
                                    child: SvgPicture.asset(
                                      'assets/icons/check.svg',
                                      color: AppColors.Success,
                                      semanticsLabel: 'Choosed',
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
                                    child: Text('Русский',
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
                                    child: SizedBox.shrink()
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
                                    child: Text('Türkçe',
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
                                    child: SizedBox.shrink()
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
                                    child: Text('Қазақ',
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
                                    child: SizedBox.shrink()
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
