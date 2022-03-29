import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../consts/text_style.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    required this.titleText,
 
  }) : super(key: key);
final String titleText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title:  Text(
          titleText,
          style: AppTextStyle.w400s15black,
        ),
       
        iconTheme: const IconThemeData(color: AppColors.violet),
        backgroundColor: Colors.white,
      );
  }
}
