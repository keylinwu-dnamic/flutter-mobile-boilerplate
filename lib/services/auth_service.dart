import 'dart:async';

abstract class IAuthService {
  Future<void> signIn();
  Future<bool> isAuthenticated();
}

class AuthService implements IAuthService {
  @override
  Future<bool> isAuthenticated() {
    // TODO: implement isAuthenticated
    throw UnimplementedError();
  }

  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
