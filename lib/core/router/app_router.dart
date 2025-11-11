import 'package:flutter_widgets/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_widgets/features/auth/presentation/pages/register_page.dart';
import 'package:flutter_widgets/features/auth/presentation/pages/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashScreen()),
    GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    GoRoute(path: '/register', builder: (context, state) => RegisterPage()),
  ],
);
