import 'package:flutter/material.dart';

class ProviderAccount with ChangeNotifier {
  final controllerLoginEmail = TextEditingController();
  final controllerLoginPassword = TextEditingController();
  final isEmail = ValueNotifier<bool>(false);
  final controllerUserName= TextEditingController();
  final controllerCreatePassword= TextEditingController();
  final controllerConfrimPassword = TextEditingController();
  final controllerBirthDay = TextEditingController();
  final controllerCreateEmail = TextEditingController();

  void setIsEmail(){
    isEmail.value = true;
    notifyListeners();
  }
  void setIsNotEmail(){
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

