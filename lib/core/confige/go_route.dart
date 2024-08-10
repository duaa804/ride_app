import 'package:go_router/go_router.dart';
import 'package:ride_app/pages/avaiable_car.dart';
import 'package:ride_app/pages/select_transport.dart';
import 'package:ride_app/src/features/favourite/favourite_page.dart';
import 'package:ride_app/src/features/onboarding/view/01_onboarding.dart';
import 'package:ride_app/src/features/onboarding/view/02_omboarding.dart';
import 'package:ride_app/src/features/onboarding/view/03_onboarding.dart';
import 'package:ride_app/home_page.dart';
import 'package:ride_app/src/features/auth/view/set_password.dart';
import 'package:ride_app/src/features/auth/view/sign_up.dart';
import 'package:ride_app/src/features/auth/view/welcome.dart';
import 'package:ride_app/src/features/transport/view/available_car_list.dart';
import 'package:ride_app/src/features/transport/view/car_detailes.dart';
import 'package:ride_app/src/features/transport/view/request_rent.dart';
import 'package:ride_app/src/features/wallet/view/add_amount_page.dart';
import 'package:ride_app/src/features/wallet/view/bank.dart';
import 'package:ride_app/src/features/wallet/view/wallet.dart';

final GoRouter router = GoRouter(
  initialLocation: '/cardetailes',
  routes: [
         GoRoute(
    path: '/availablecar',
    builder: (context, state) =>  const AvaiableCar(),
  ),
         GoRoute(
    path: '/selecttransport',
    builder: (context, state) =>  const SelectTransport(),
  ),
       GoRoute(
    path: '/cardetailes',
    builder: (context, state) =>   CarDetailes(),
  ),
      GoRoute(
    path: '/availablecarlist',
    builder: (context, state) =>  const AvailableCarList(),
  ),
      GoRoute(
    path: '/requestrent',
    builder: (context, state) =>  gi RequestRentPage(),
  ),
         GoRoute(
    path: '/favourite',
    builder: (context, state) =>  const FavouritePage(),
  ),
       GoRoute(
    path: '/addamountpage',
    builder: (context, state) =>  AddAmountPage(),
  ),
        GoRoute(
    path: '/bank',
    builder: (context, state) =>  BankPage(),
  ),
      GoRoute(
    path: '/wallet',
    builder: (context, state) => const Wallet(),
  ),
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