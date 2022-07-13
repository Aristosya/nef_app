import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/app_colors.dart';

class TopList extends StatelessWidget {
  String img;

  TopList({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        margin: EdgeInsets.only(right: 8.0),
        child: Ink(
          width: 343,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage(img)
            ),
          ),
        ),
      ),
    );
  }
}
