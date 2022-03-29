import 'package:flutter/material.dart';
import '../../../consts/colors.dart';
import '../../../consts/text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Log in',
          style: AppTextStyle.w400s15black,
        ),
        iconTheme: const IconThemeData(color: AppColors.pink),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: AppColors.grey,
                  radius: 32,
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 50,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: const [Text('User Name'), Text('20.01.2000')],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
