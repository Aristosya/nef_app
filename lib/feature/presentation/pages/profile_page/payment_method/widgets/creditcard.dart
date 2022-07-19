import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../common/app_colors.dart';
import '../../../../widgets/texts.dart';


class CreditCard extends StatelessWidget {
  bool mastercard;
  String card_digits;
  bool last;
  bool first;
  bool only;


  CreditCard({Key? key, required this.mastercard,required this.card_digits,required this.first,required this.only,required this.last,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: AppColors.White,
        borderRadius: (() {
          if (only) {
            return BorderRadius.all(Radius.circular(6));
          }
          if (first) {
            return BorderRadius.only(topLeft: Radius.circular(6),topRight: Radius.circular(6));
          }
          else if (last){
            return BorderRadius.only(bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6));
          }
          return BorderRadius.all(Radius.circular(0));
        }())
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => {},
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                              border: Border.all(width: 1.0,color: Color.fromRGBO(228, 228, 228, 0.6))
                          ),
                          margin: EdgeInsets.only(top: 10,bottom: 10,left: 8,right: 16),
                          child: Center(
                            child: mastercard ?
                            SvgPicture.asset(
                              'assets/icons/mastercard.svg',
                              width: 7,
                              height: 12,
                            ):SvgPicture.asset(
                              'assets/icons/visa.svg',
                              width: 7,
                              height: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(children: [
                            SvgPicture.asset(
                              'assets/icons/dots-card.svg',
                              color: AppColors.Secondary,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8,),
                              child: Texts().body1(card_digits,color: AppColors.Secondary,),
                              ),
                          ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 24,
                      height:24,
                      margin: EdgeInsets.only(top: 10,bottom: 10,right: 8),
                      padding: EdgeInsets.only(top: 6,bottom: 6,right:8,left: 9),
                      child: SvgPicture.asset(
                        'assets/icons/chevron-right.svg',
                        color: AppColors.Primary2,
                        semanticsLabel: 'Arrow-next',
                      ),
                    ),
                  ],
                ),
                (() {
                  if (only || last){
                    return SizedBox();
                  }
                  return Container(
                    height: 1,
                    color: AppColors.Grey2,
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                  );
                }()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
