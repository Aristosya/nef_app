import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../../../../../common/app_colors.dart';
import '../../../../../../widgets/appbars.dart';
import '../../../../../../widgets/texts.dart';

class SuccessAddedPage extends StatelessWidget {
  const SuccessAddedPage({super.key});

  static const routeName = '/profile/payment/add-a-card/success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBars().close(context),
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
                  margin: EdgeInsets.fromLTRB(92,0,91,41),
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
                Texts().heading2('Your bank card is successfully added',color: AppColors.Primary1)
            ],
          ),
        ));
  }

}
