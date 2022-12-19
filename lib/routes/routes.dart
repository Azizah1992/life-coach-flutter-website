import 'package:backend/logic/bindings/auth_binding.dart';
import 'package:backend/view/screens/about.dart';
import 'package:backend/view/screens/auth/joinus.dart';
import 'package:backend/view/screens/auth/login.dart';
import 'package:backend/view/screens/auth/profilepage.dart';
import 'package:backend/view/screens/coachdescription.dart';
import 'package:backend/view/screens/coaches.dart';
import 'package:backend/view/screens/homeScreen.dart';
import 'package:backend/view/screens/servises.dart';
import 'package:get/get.dart';

class AppRoute {
  static List<GetPage> routes = [
    GetPage(name: Routes.home, page: () => const HomePage()),
    GetPage(
        name: Routes.login, page: () => LoginScreen(), binding: AuthBinding()),
    GetPage(name: Routes.about, page: () => const AboutPage()),
    GetPage(
        name: Routes.joinus,
        page: () => JoinusScreen(),
        binding: AuthBinding()),
    GetPage(name: Routes.services, page: () => const ServecesScreen()),
    GetPage(name: Routes.coache, page: () => const CoachesScreen()),
    GetPage(name: Routes.profile, page: () => const ProfilePage()),
    GetPage(
        name: Routes.coachdescription, page: () => const CoachDescription()),
  ];
}

class Routes {
  static String home = '/home';
  static String about = '/about';
  static String login = '/login';
  static String joinus = '/joinus';
  static String services = '/services';
  static String coache = '/coache';
  static String profile = '/profile';
  static String coachdescription = '/coachdescription';
}
