import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:talapatk/features/auth_feature/presentation/category_details/bindings/category_details_binding.dart';
import 'package:talapatk/features/auth_feature/presentation/forget_password/bindings/forget_password_binding.dart';
import 'package:talapatk/features/auth_feature/presentation/forget_password/views/forget_password_view.dart';
import 'package:talapatk/features/auth_feature/presentation/login/bindings/login_binding.dart';
import 'package:talapatk/features/auth_feature/presentation/login/views/login_view.dart';
import 'package:talapatk/features/auth_feature/presentation/main_page/bindings/main_page_binding.dart';
import 'package:talapatk/features/auth_feature/presentation/main_page/views/main_page_view.dart';
import 'package:talapatk/features/auth_feature/presentation/map_page/bindings/map_page_binding.dart';
import 'package:talapatk/features/auth_feature/presentation/map_page/views/map_page_view.dart';
import 'package:talapatk/features/auth_feature/presentation/res_details/views/res_details_view.dart';
import 'package:talapatk/features/auth_feature/presentation/splash/bindings/splash_binding.dart';
import 'package:talapatk/features/auth_feature/presentation/splash/views/splash_view.dart';

import '../../features/auth_feature/presentation/category_details/views/category_details_view.dart';
import '../../features/auth_feature/presentation/res_details/bindings/res_details_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.forgetPassword,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.mainLayout,
      page: () => const MainPageView(),
      binding: MainPageBinding(),
    ),
    GetPage(
      name: _Paths.mapPage,
      page: () => const MapPageView(),
      binding: MapPageBinding(),
    ),
    GetPage(
      name: _Paths.categoryDetails,
      page: () => const CategoryDetailsView(),
      binding: CategoryDetailsBinding(),
    ),
    GetPage(
      name: _Paths.resDetails,
      page: () => const ResDetailsView(),
      binding: ResDetailsBinding(),
    ),
  ];
}
