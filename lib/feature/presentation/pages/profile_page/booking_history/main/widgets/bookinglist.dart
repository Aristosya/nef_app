import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../common/app_colors.dart';
import '../../../../../widgets/texts.dart';

class BookingCard extends StatelessWidget {
  bool isCurrent;
  String title;
  String description;
  String duration;
  String date;
  String time;
  String price;

  BookingCard({
    Key? key,
    required this.isCurrent,
    required this.title,
    required this.description,
    required this.duration,
    required this.date,
    required this.time,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.White,
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Texts().heading3(title, color: AppColors.Secondary ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width - 156,
                                  child: Texts().small1_regular(description,color: AppColors.Grey1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child:Texts().body2(duration,color: AppColors.Primary2),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 1,
                color: AppColors.Grey2,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildText('calendar',date),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: buildText('clock',time)),
                      buildText('credit-card',price),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ((){
                        if (isCurrent){return cancelButton();}
                        return SizedBox.shrink();
                      }())
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding cancelButton() {
    return Padding(
                      padding: EdgeInsets.only(right: 6.0, bottom: 8.0),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () =>{},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.Grey1),
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: Texts().small1_medium('Cancel',color: AppColors.Grey1),
                            ),
                          ),
                        ),
                      ),
                    );
  }

  Row buildText(icon, text) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/$icon.svg',
              color: AppColors.Primary2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.0,
          ),
          child:Texts().body2(text,color: AppColors.Secondary),
        ),
      ],
    );
  }
}
