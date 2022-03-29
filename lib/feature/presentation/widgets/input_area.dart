

import 'package:flutter/material.dart';

class InputArea extends StatelessWidget {
  const InputArea({
    Key? key,
    required this.text,
    required this.icon,
    required this.controller,
    required this.onChange,
  }) : super(key: key);

  final String text;
  final Icon? icon;
  final TextEditingController controller;
  final String? Function(String?) onChange;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextFormField(
        onChanged: onChange,
        controller:controller ,
        decoration: InputDecoration(
          suffix: icon,
          hintText: text,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
