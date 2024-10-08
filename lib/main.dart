import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:template_test/src/presentation/pages/home_page.dart';
import 'package:template_test/src/presentation/pages/sign_in_page.dart';
import 'package:template_test/src/presentation/pages/sign_up_page.dart';
import 'package:template_test/src/presentation/pages/splash_page.dart';

Future main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Future.delayed(const Duration(seconds: 10));
  FlutterNativeSplash.remove();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: '/splash',
  routes: <RouteBase>[
    GoRoute(
      name: '/home',
      path: "/home",
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      name: '/sign-up',
      path: "/sign-up",
      builder: (context, state) {
        return const SignUpPage();
      },
    ),
    GoRoute(
      name: '/sign-in',
      path: "/sign-in",
      builder: (context, state) {
        return const SignInPage();
      },
    ),
    GoRoute(
      name: '/splash',
      path: "/splash",
      builder: (context, state) {
        return const SplashPage();
      },
    ),
  ],
);
