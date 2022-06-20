import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/services/auth_service.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({this.authService});
  final AuthService? authService;

  @override
  void onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (await authService?.isAuthenticated() ?? false) {
      //TODO: do something
      resolver.next(true);
    } else {
      resolver.next(true);
    }
  }
}
