import 'package:get/get.dart';
import 'package:talapatk/features/auth_feature/presentation/main_page/controllers/main_page_controller.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(
      () => MainPageController(),
    );
  }
}
