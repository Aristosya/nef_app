import 'package:flutter/material.dart';
import 'package:nef_app/common/app_colors.dart';
import 'route_generator.dart';

void main() {
  runApp(MaterialApp(onGenerateRoute: RouteGenerator.generateRoute,
  theme: ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: AppColors.Background1,
  ),));
}
