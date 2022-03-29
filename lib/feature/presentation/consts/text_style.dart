import 'package:flutter/material.dart';
import 'package:test_app/feature/presentation/consts/colors.dart';

class AppTextStyle {
  static const w400s15White =
      TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400);

  static const w400s15black =
      TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400);

  static const w500s20black =
      TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500);

  static const w400s15pink = TextStyle(
      color: AppColors.pink, fontSize: 15, fontWeight: FontWeight.w400);

  static const w500s20violet = TextStyle(
      color: AppColors.violet, fontSize: 20, fontWeight: FontWeight.w500);

  static const w400s20grey = TextStyle(
      color: AppColors.grey, fontSize: 20, fontWeight: FontWeight.w400);

  static const w400s12pink = TextStyle(
      color: AppColors.pink, fontSize: 12, fontWeight: FontWeight.w400);

  static const w400s12grey = TextStyle(
      color: AppColors.grey, fontSize: 12, fontWeight: FontWeight.w400);
}
