import 'package:go_router/go_router.dart';
import 'package:ride_app/pages/01_onboarding.dart';
import 'package:ride_app/pages/02_omboarding.dart';
import 'package:ride_app/pages/03_onboarding.dart';
import 'package:ride_app/pages/home_page.dart';
import 'package:ride_app/pages/set_password.dart';
import 'package:ride_app/pages/sign_up.dart';
import 'package:ride_app/pages/welcome.dart';

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