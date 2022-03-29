import 'package:flutter/material.dart';

class ProviderAuth with ChangeNotifier {
  final controllerLoginEmail = TextEditingController();
  final controllerLoginPassword = TextEditingController();
  final isEmail = ValueNotifier<bool>(false);

  void setIsEmail() {
    isEmail.value = true;
    notifyListeners();
  }

  void setIsNotEmail() {
    isEmail.value = false;
    notifyListeners();
  }

  @override
  void dispose() {
    controllerLoginEmail.dispose();
    controllerLoginPassword.dispose();
    isEmail.dispose();
    super.dispose();
  }
}
