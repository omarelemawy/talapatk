import 'dart:async';

import 'package:get/get.dart';
import 'package:talapatk/core/routes/app_pages.dart';

class SplashController extends GetxController {
  navigate() async {
    Get.offAllNamed(Routes.mapPage);

    // if (UserService.to.currentUser.value != null) {
    //   Get.offAllNamed(Routes.mainLayout);
    // } else {
    //   Get.offAllNamed(Routes.login);
    // }
  }

  @override
  void onReady() async {
    Timer(const Duration(seconds: 3), () async => await navigate());

    super.onReady();
  }
}
