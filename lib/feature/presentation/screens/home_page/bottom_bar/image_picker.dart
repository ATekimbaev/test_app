import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_app/feature/presentation/consts/text_style.dart';
import 'package:test_app/feature/presentation/screens/home_page/tab_bar/error.dart';

import '../../../consts/colors.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/input_area.dart';

class PickImage extends StatefulWidget {
  const PickImage({Key? key}) : super(key: key);

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  final controller = TextEditingController();
  XFile? image;

  pickImage() async {
    final ImagePicker _picker = ImagePicker();

    image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override
  void initState() {
    pickImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.violet),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 360,
            child: image != null
                ? Image.file(
                    File(image!.path),
                  )
                : const ErrorScreen(),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                InputArea(
                  onChange: (value) {},
                  text: 'Name',
                  icon: null,
                  controller: controller,
                ),
                const SizedBox(
                  height: 15,
                ),
                InputArea(
                  onChange: (value) {},
                  text: 'Description',
                  icon: null,
                  controller: controller,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButton(
                    func: () {},
                    text: 'Upload',
                    backgroundColor: Colors.black,
                    textStyle: AppTextStyle.w400s15White)
              ],
            ),
          )
        ],
      ),
    );
  }
}
