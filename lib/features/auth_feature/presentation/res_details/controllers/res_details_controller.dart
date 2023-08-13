import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ResDetailsController extends GetxController {
  // LoginUserUseCase loginUserUseCase;

  // LoginController({
  //   required this.loginUserUseCase,
  // });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController mobileController;
  late TextEditingController passController;

  File? selectedImage;

  bool acceptPolicy = false;
  bool acceptPolicyError = false;
  bool isLoading = false;
  bool isObscure = true;
  Future<void> pickPicture() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImage = File(image.path);
      update();
    }
  }

  // login() async {
  //   if (!formKey.currentState!.validate()) {
  //     return;
  //   }
  //   isLoading = true;
  //   update();
  //   final result = await loginUserUseCase.call(
  //       mobile: mobileController.text, password: passController.text);
  //   result.fold((failure) async {
  //     isLoading = false;
  //     update();
  //     Utils.showError(Utils.mapFailureToMessage(failure));
  //   }, (user) {
  //     UserService.to.currentUser.value = user;

  //     isLoading = false;
  //     update();
  //     Get.offAndToNamed(Routes.mainLayout);
  //   });
  // }

  @override
  void onInit() {
    mobileController = TextEditingController();
    passController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    mobileController.dispose();
    passController.dispose();

    super.dispose();
  }
}
