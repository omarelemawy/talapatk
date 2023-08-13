import 'package:get/get.dart';
import 'package:talapatk/features/auth_feature/presentation/account/controllers/account_controller.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountController>(
      () => AccountController(),
    );
  }
}
