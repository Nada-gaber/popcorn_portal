import 'package:flutter/material.dart';

class OnBoardingModel {
  final String title;
  final String icon;
  final Color backGroundColor;
  final Color textColor;
  const OnBoardingModel({
    required this.title,
    required this.icon,
    this.backGroundColor = Colors.white,
    this.textColor = Colors.black,
  });
}
