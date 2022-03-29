abstract class AuthRepo {
  Future<bool> logIn({required String email, required String password});
}
