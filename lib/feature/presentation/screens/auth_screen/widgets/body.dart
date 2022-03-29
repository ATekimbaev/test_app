part of '../auth_screen.dart';

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerWatch = context.watch<ProviderAuth>();
    final providerRead = context.read<ProviderAuth>();
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        InputArea(
          onChange: (value) {
            if (value!.contains('@')) {
              providerRead.setIsEmail();
            } else {
              providerRead.setIsNotEmail();
            }
          },
          text: 'E-mail',
          icon: null,
          controller: providerWatch.controllerLoginEmail,
        ),
        const SizedBox(
          height: 10,
        ),
        InputArea(
          onChange: (value) {},
          text: 'Password',
          icon: null,
          controller: providerWatch.controllerLoginPassword,
        ),
        const SizedBox(
          height: 40,
        ),
        const _ButtonnWidget(),
        const SizedBox(
          height: 26,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegistrationScreen(),
              ),
            );
          },
          child: const Text(
            'Create account',
            style: AppTextStyle.w400s15pink,
          ),
        ),
      ],
    );
  }
}