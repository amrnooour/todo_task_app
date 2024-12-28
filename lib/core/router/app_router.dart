import 'package:go_router/go_router.dart';
import 'package:todo_app/core/router/routes_name.dart';
import 'package:todo_app/features/auth/signin/presentation/views/signin.dart';
import 'package:todo_app/features/splash/splash.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/" , builder: (context, state) => const Splash(),),
  GoRoute(path: RoutesName.signinRoute , builder: (context, state) => const Signin(),)
]);