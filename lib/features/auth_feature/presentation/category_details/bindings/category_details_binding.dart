import 'package:get/get.dart';
import 'package:talapatk/features/auth_feature/presentation/category_details/controllers/category_details_controller.dart';

class CategoryDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryDetailsController>(
      () => CategoryDetailsController(),
    );
  }
}
