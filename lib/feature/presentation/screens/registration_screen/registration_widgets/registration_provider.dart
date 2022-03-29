import 'package:flutter/cupertino.dart';

class ProviderCreateAccount with ChangeNotifier {

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
   
    controllerCreateEmail.dispose();
    
    isEmail.dispose();
    super.dispose();
  }
}

