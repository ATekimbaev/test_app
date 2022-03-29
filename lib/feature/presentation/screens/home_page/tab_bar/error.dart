import 'package:flutter/material.dart';
import 'package:test_app/feature/presentation/consts/text_style.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 66,
        ),
        Image.asset(
          'assets/images/error_icon.png',
          height: 130,
          width: 130,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Oh shucks!',
          style: AppTextStyle.w500s20violet,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Slow or no internet connection.\nPlease check your internet settings',
          style: AppTextStyle.w400s20grey,
        )
      ],
    );
  }
}
