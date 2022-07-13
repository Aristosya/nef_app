import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../../../../../common/app_colors.dart';

class SuccessAddedPage extends StatelessWidget {
  const SuccessAddedPage({super.key});

  static const routeName = '/profile/payment/add-a-card/success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 44.0,
          leading: SizedBox.shrink(),
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/close.svg',
                color: AppColors.Primary2,
                semanticsLabel: 'Close page',
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          elevation: 0.0,
          backgroundColor: AppColors.Background1,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right:16 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.213054187,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 92, right: 91, bottom: 41),
                  decoration: BoxDecoration(
                    color: AppColors.Primary2.withOpacity(0.2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: SvgPicture.asset(
                      'assets/icons/vector-success.svg',
                      // color: AppColors.White,
                      semanticsLabel: 'Close page',
                    ),
                  ),
                ),
              ),
                Text(
                  'Your bank card is successfully added',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.Primary1,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SFProDisplay',
                      fontSize: 21),
                ),
            ],
          ),
        ));
  }
}
