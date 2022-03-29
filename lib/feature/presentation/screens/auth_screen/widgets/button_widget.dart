part of '../auth_screen.dart';

class _ButtonnWidget extends StatelessWidget {
  const _ButtonnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<ProviderAuth>();

    return BlocProvider(
      create: (context) =>
          AuthBloc(repo: RepositoryProvider.of<AuthRepoImp>(context),),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSucces) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomBar(),
              ),
            );
          } else if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Wrong Email or Password'),
              ),
            );
          }
        },
        builder: (context, state) {
          return AppButton(
              func: () {
                if (state is! AuthLoading && vm.isEmail.value) {
                  BlocProvider.of<AuthBloc>(context).add(
                    AuthLogInEvent(
                        email: vm.controllerLoginEmail.text,
                        password: vm.controllerLoginPassword.text),
                  );
                }
              },
              text: 'Log In',
              backgroundColor: vm.isEmail.value
                  ? Colors.black
                  : Colors.black.withOpacity(0.5),
              textStyle: AppTextStyle.w400s15White);
        },
      ),
    );
  }
}
