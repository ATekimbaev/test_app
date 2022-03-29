import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_app/feature/data/dio_settinngs/dio_setting.dart';

import 'feature/data/reposetories/auth_repo_impl.dart';
import 'feature/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'feature/presentation/screens/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const InitWidget(
      child: MaterialApp(
        home: SafeArea(child: WelcomeScreen()),
      ),
    );
  }
}

class InitWidget extends StatelessWidget {
  const InitWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) =>
              AuthRepoImp(dio: RepositoryProvider.of<DioSettings>(context).dio),
        ),
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
      ],
      child: BlocProvider(
        create: (context) => AuthBloc(
          repo: RepositoryProvider.of<AuthRepoImp>(context),
        ),
        child: child,
      ),
    );
  }
}
