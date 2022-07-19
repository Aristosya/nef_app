import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/app_colors.dart';

class Texts {
  final Color color = Colors.white;

  Text heading1(text, {color}) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 34),
    );
  }

  Text heading2(text, {Color color = AppColors.White}) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 22),
    );
  }


  Text heading3(text, {Color color = AppColors.White}) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: 17),
    );
  }



  Text body1(text, {Color color = AppColors.White}) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: 15),
    );
  }

  Text body2(text, {Color color = AppColors.White}) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: 15),
    );
  }

  Text button(text, {Color color = AppColors.White}) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 17),
    );
  }

  Text small1_medium(text, {Color color = AppColors.White}) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: 13),
    );
  }

  Text small1_regular(text, {Color color = AppColors.White}) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: 13),
    );
  }

  Text small2_medium(text, {Color color = AppColors.White}) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: 10),
    );
  }

  Text small2_regular(text, {Color color = AppColors.White}) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontFamily: 'SFProDisplay',
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: 10),
    );
  }


}
