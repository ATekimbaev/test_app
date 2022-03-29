import 'package:flutter/material.dart';
import 'package:test_app/feature/presentation/consts/text_style.dart';
import 'package:test_app/feature/presentation/widgets/app_button.dart';

import '../auth_screen/auth_screen.dart';
import '../registration_screen/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon.png',
              width: 92,
              height: 97,
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Welcome!',
              style: AppTextStyle.w500s20black,
            ),
            const SizedBox(
              height: 60,
            ),
            AppButton(
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrationScreen(),
                    ),
                  );
                },
                text: 'Create an account',
                backgroundColor: Colors.black,
                textStyle: AppTextStyle.w400s15White),
            const SizedBox(
              height: 10,
            ),
            AppButton(
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthScreen(),
                    ),
                  );
                },
                text: 'I already have an account',
                backgroundColor: Colors.white,
                textStyle: AppTextStyle.w400s15black),
          ],
        ),
      ),
    );
  }
}
