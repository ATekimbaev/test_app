part of '../registration_screen.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppButton(
        func: () {},
        text: 'Create account',
        backgroundColor: Colors.black,
        textStyle: AppTextStyle.w400s15White);
  }
}
