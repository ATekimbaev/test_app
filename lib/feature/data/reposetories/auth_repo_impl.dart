import 'package:dio/dio.dart';

import '../models/create_user_model.dart';

class AuthRepoImp {
  AuthRepoImp({required this.dio});
  late final Dio dio;
  Future<bool> logIn({required String email,
 
  required String password,
}) async {

   if (password != null && email != null)
   return true;
   else return false;
    
    

  
}


  Future<CreateUserModel> createUser({required String email,
  required String phone,
  required String fullName,
  required String password,
  required String username,
  required String birthday}) async {

    const api = '/api/users';
    Response response;
   
    if (response.statusCode == 200){
      final body = response.data;
    } return CreateUserModel(email: email, fu )
    


  
}}




