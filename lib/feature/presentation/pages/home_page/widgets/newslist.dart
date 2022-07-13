import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/app_colors.dart';

class NewsList extends StatelessWidget {
  String img;
  String title;
  String date;
  String prevText;

  NewsList({Key? key,required this.img,required this.date, required this.prevText,required this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          InkWell(
            onTap: () => {},
            child: Container(
              height: 140,
              // margin: EdgeInsets.only(bottom: 8.0),
              child: Ink(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6), color: AppColors.White),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 160,
                        height: 124,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(img)
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                        child: Container(
                          width: 159,
                          height: 124,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Text(
                                  title,
                                  style: TextStyle(
                                    fontFamily: 'SFProDisplay',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.Secondary
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Text(
                                  date,
                                  style: TextStyle(
                                    fontFamily: 'SFProDisplay',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.Grey1,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Text(
                                  prevText,
                                  style: TextStyle(
                                    fontFamily: 'SFProDisplay',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: AppColors.Grey1,
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
            ),
          ),
          SizedBox(
            height: 8,
          )
        ],
      );
  }
}
