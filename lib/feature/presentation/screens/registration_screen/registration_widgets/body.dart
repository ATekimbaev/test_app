part of '../registration_screen.dart';

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerWatch = context.watch<ProviderCreateAccount>();
    final providerRead = context.read<ProviderCreateAccount>();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          InputArea(
            onChange: (value) {},
            text: 'Username*',
            icon: null,
            controller: providerWatch.controllerUserName,
          ),
          const SizedBox(
            height: 10,
          ),
          InputArea(
            onChange: (value) {},
            text: 'Birthday',
            icon: null,
            controller: providerWatch.controllerBirthDay,
          ),
          const SizedBox(
            height: 10,
          ),
          InputArea(
            onChange: (value) {},
            text: 'E-mail*',
            icon: null,
            controller: providerWatch.controllerCreateEmail,
          ),
          const SizedBox(
            height: 10,
          ),
          InputArea(
            onChange: (value) {},
            text: 'Password*',
            icon: null,
            controller: providerWatch.controllerCreatePassword,
          ),
          const SizedBox(
            height: 10,
          ),
          InputArea(
            onChange: (value) {},
            text: 'Confirm password**',
            icon: null,
            controller: providerWatch.controllerConfrimPassword,
          ),
          const SizedBox(
            height: 40,
          ),
          const Button(),
        ],
      ),
    );
  }
}
