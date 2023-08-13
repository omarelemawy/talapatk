import 'dart:async';

import 'package:get/get.dart';

import '../../features/auth_feature/domain/entities/user.dart';
import '../errors/failures.dart';
import '../routes/app_pages.dart';

class UserService extends GetxService {
  // GetUserUseCase getUserUseCase;

  // UserService({
  //   required this.getUserUseCase,
  // });

  static UserService get to => Get.find();

  Rx<User?> currentUser = Rx(null);

  Future<UserService> init() async {
    await getUser();

    return this;
  }

  Future getUser() async {
    // final result = await getUserUseCase();

    // result.fold((failure) {
    //   print(failure);
    //   if (failure.runtimeType == UnVerifiedFailure) {
    //     Get.offAllNamed(Routes.login);
    //   }
    // }, (user) async {
    //   currentUser.value = user;
    // });
  }
}
