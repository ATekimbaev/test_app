import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/feature/presentation/screens/registration_screen/registration_widgets/registration_provider.dart';
import 'package:test_app/feature/presentation/widgets/app_button.dart';
import 'package:test_app/feature/presentation/widgets/input_area.dart';

import '../../consts/colors.dart';
import '../../consts/text_style.dart';

part 'registration_widgets/button.dart';
part 'registration_widgets/body.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderCreateAccount(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create account',
            style: AppTextStyle.w400s15black,
          ),
          iconTheme: const IconThemeData(color: AppColors.violet),
          backgroundColor: Colors.white,
        ),
        body: const _Body(),
      ),
    );
  }
}
