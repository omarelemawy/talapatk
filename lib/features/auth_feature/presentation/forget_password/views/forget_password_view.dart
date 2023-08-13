import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talapatk/core/widgets/custom_loading.dart';

import '../../../../../core/widgets/custom_text.dart';
import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgetPasswordController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: CustomText(
              "نسيت كلمة المرور",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: Colors.black, fontSize: 25),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          body: CustomLoading(
            widget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(children: const []),
            ),
            isLoading: controller.isLoading,
          ),
        );
      },
    );
  }
}
