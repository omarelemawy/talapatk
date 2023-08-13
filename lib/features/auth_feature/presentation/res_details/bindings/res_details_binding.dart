import 'package:get/get.dart';

import '../controllers/res_details_controller.dart';

class ResDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResDetailsController>(
      () => ResDetailsController(
          // loginUserUseCase: Get.find(),
          ),
    );
  }
}
