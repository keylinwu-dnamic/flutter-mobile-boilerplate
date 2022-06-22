import 'dart:async';

abstract class IAuthService {
  Future<void> signIn();
  Future<bool> isAuthenticated();
}

class AuthService implements IAuthService {
  @override
  Future<bool> isAuthenticated() {
    // ignore: todo
    // TODO: implement isAuthenticated
    throw UnimplementedError();
  }

  @override
  Future<void> signIn() {
    // ignore: todo
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
