import 'package:go_router/go_router.dart';
import 'package:ride_app/src/features/onboarding/view/01_onboarding.dart';
import 'package:ride_app/src/features/onboarding/view/02_omboarding.dart';
import 'package:ride_app/src/features/onboarding/view/03_onboarding.dart';
import 'package:ride_app/home_page.dart';
import 'package:ride_app/src/features/auth/view/set_password.dart';
import 'package:ride_app/src/features/auth/view/sign_up.dart';
import 'package:ride_app/src/features/auth/view/welcome.dart';

final GoRouter router = GoRouter(
  initialLocation: '/oneonboarding',
  routes: [
     GoRoute(
    path: '/oneonboarding',
    builder: (context, state) => const OneOnBoarding(),
  ),
  GoRoute(
    path: '/',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/welcome',
    builder: (context, state) =>  WelcomeScreen(),
  ),
  GoRoute(
      path: '/twoonboarding',
      builder: (context, state) => const TwoOnboarding()),
  GoRoute(
      path: '/threeonboarding',
      builder: (context, state) => const ThreeOnboarding()),
       GoRoute(
      path: '/signup',
      builder: (context, state) =>  SignUp()),
       GoRoute(
      path: '/log in',
      builder: (context, state) => const SetPasswrd()),


]);