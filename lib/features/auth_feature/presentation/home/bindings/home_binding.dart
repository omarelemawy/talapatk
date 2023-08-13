import 'package:get/get.dart';
import 'package:talapatk/features/auth_feature/presentation/home/controllers/home_controller.dart';

class HomeBindingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
