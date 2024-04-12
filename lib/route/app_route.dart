import 'package:fastival_application/haders.dart';
import 'package:fastival_application/pages/details_page/details_page.dart';
import 'package:fastival_application/pages/home_page/home_page.dart';
import 'package:fastival_application/pages/intro_page/intro_page.dart';
import 'package:fastival_application/pages/splash_screen/splash_screen.dart';

class AppRoutes {
  static String splashscreen = "/";
  static String intropage = "into_page";
  static String homepage = "home_page";
  static String detailspage = "details_page";

  static Map<String, WidgetBuilder> route = {
    splashscreen: (context) => const SplashScreen(),
    intropage: (context) => const IntroPage(),
    homepage: (context) => const HomePage(),
    detailspage: (context) => const DetailsPage(),
  };
}
