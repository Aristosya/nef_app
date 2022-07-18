import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';


import '../../../../../../common/app_colors.dart';

class ContactsPage extends StatelessWidget {
  ContactsPage({super.key});

  String eMail = 'info@nefkazakhstan.com';
  String tel = '+7 (727) 111 22 33';
  static const routeName = '/profile/settings/contacts';

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
          'Contacts',
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => sendMail(),
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                        top: 11,
                                        right: 16,
                                        bottom: 13,
                                      ),
                                      child: SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: SvgPicture.asset(
                                          'assets/icons/email.svg',
                                          color: AppColors.Primary2,
                                          semanticsLabel: 'Mail',
                                          width: 16.67,
                                          height: 13.33,
                                        ),
                                      ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 11,
                                    ),
                                    child: Text(
                                      eMail,
                                      style: TextStyle(
                                          color: AppColors.Secondary,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'SFProDisplay',
                                          fontSize: 15),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Ink(
                      decoration: BoxDecoration(
                        color: AppColors.White,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () => callTo(),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                        top: 11,
                                        right: 16,
                                        bottom: 13,
                                      ),
                                      child: SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: SvgPicture.asset(
                                          'assets/icons/call.svg',
                                          color: AppColors.Primary2,
                                          semanticsLabel: 'Mail',
                                          width: 16.93,
                                          height: 16.93,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 11,
                                      ),
                                      child: Text(
                                        tel,
                                        style: TextStyle(
                                            color: AppColors.Secondary,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'SFProDisplay',
                                            fontSize: 15),
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
                  ),
                ],
              )),
        ],
      ),
    );
  }
  sendMail() {
    final url = 'mailto:$eMail';
    launchTo(url);
    }
  callTo() {
    final url = 'tel:$tel';
    launchTo(url);
  }
}

Future launchTo(url) async
{if (await canLaunchUrlString(url)) {await launchUrlString(url);}
}
