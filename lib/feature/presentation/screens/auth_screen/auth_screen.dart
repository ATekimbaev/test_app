import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:test_app/feature/data/reposetories/auth_repo_impl.dart';
import 'package:test_app/feature/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:test_app/feature/presentation/consts/colors.dart';
import 'package:test_app/feature/presentation/consts/text_style.dart';
import 'package:test_app/feature/presentation/screens/auth_screen/widgets/auth_provider.dart';
import 'package:test_app/feature/presentation/widgets/app_button.dart';
import '../../widgets/input_area.dart';
import '../home_page/bottom_bar/bottom_bar.dart';
import '../registration_screen/registration_screen.dart';
part 'widgets/body.dart';
part 'widgets/button_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderAuth(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Log in',
            style: AppTextStyle.w400s15black,
          ),
          iconTheme: const IconThemeData(color: AppColors.violet),
          backgroundColor: Colors.white,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: _Body(),
        ),
      ),
    );
  }
}
