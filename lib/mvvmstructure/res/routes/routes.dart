import 'package:get/get.dart';
import 'package:learngetx/mvvmstructure/res/routes/routes_name.dart';
import 'package:learngetx/mvvmstructure/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RoutesName.splashScreen, page: () => const SplashScreen(), transition: Transition.leftToRight),
      ];
}
