import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nef_app/feature/presentation/pages/profile_page/payment_method/widgets/creditcard.dart';

import '../../../../../../common/app_colors.dart';
import '../../../../widgets/appbars.dart';
import 'add_a_card/main_add_a_card/add_a_card_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  static const routeName = '/profile/payment-methods';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars().back_right(context,asset_icon: 'assets/icons/edit-alt.svg', color_icon: AppColors.Grey1, onTap_icon: null, title: 'Payment method', height_icon: 15, width_icon: 15,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16,right: 16,bottom: 30,top: 8,),
              child: Column(
                children: [
                  CreditCard(mastercard: true, card_digits: '2678', first: true, only: false, last: false),
                  CreditCard(mastercard: false, card_digits: '9090', first: false, only: false, last: true),
                ],
              )
            ),
            Padding(
              // If there are a lot of card padding for the bottom will work like safeArea
              padding: const EdgeInsets.only(bottom:50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: ()=>{ Navigator.pushNamed(context, AddACardPage.routeName)},
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Ink(
                            width: 24,
                            height: 24,
                            padding: EdgeInsets.all(4),
                            child: SvgPicture.asset(
                              'assets/icons/add.svg',
                              color: AppColors.Primary2,
                              width: 16,
                              height: 16,
                            ),
                          ),
                        ),
                        Text('Add a bank card',
                          style: TextStyle(
                              color: AppColors.Primary2,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFProDisplay',
                              fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
