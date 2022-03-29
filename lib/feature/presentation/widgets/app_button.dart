import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.func,
    required this.text,
    required this.backgroundColor,
    required this.textStyle,
  }) : super(key: key);

  final Function() func;
  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          side:
              MaterialStateProperty.all(const BorderSide(color: Colors.black)),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: func,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
