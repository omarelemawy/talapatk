import 'package:get/get.dart';
import 'package:talapatk/features/auth_feature/presentation/map_page/controllers/map_page_controller.dart';

class MapPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapPageController>(
      () => MapPageController(),
    );
  }
}
