import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:test_app/feature/data/reposetories/auth_repo_impl.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.repo}) : super(AuthInitial()) {
    on<AuthLogInEvent>(_logIn);
  }

  late final AuthRepoImp repo;

  Future<void> _logIn(
    AuthLogInEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 2));
    final result =
        await repo.logIn(email: event.email, password:event.password );

    if (result) {
      emit(AuthSucces());
    } else {
      (emit(AuthError()));
    }
  }
  Future<void> _createUser(
    CreateUserEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result =
        await repo.createUser(email:event.email , phone:event.phone ,fullName: event.fullName,password:event.password ,username:event.username ,birthday:event.birthday ,);

    if (result != null) {
      emit(AuthSucces());
    } else {
      (emit(AuthError()));
    }
  }
}

 


@immutable
abstract class AuthEvent {}

class CreateUserEvent extends AuthEvent {
  final String email;
  final String phone;
  final String fullName;
  final String password;
  final String username;
  final String birthday;
  CreateUserEvent({
    required this.email,
    required this.phone,
    required this.fullName,
    required this.password,
    required this.username,
    required this.birthday,
  });
}

class AuthLogInEvent extends AuthEvent {
  final String email;
  final String password;
  AuthLogInEvent({
    required this.email,
    required this.password,
  });
}

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSucces extends AuthState {}

class AuthError extends AuthState {}
