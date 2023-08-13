import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talapatk/core/consts/assets.dart';
import 'package:talapatk/core/languages/app_translations.dart';
import 'package:talapatk/core/widgets/custom_button.dart';
import 'package:talapatk/core/widgets/custom_text_field.dart';
import 'package:talapatk/features/auth_feature/presentation/forget_password/controllers/change_password_controller.dart';

import '../../../../../core/widgets/custom_text.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangePasswordController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: CustomText(
              LocaleKeys.resetThePassword.tr,
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
          body: Form(
            key: controller.formKey,
            child: ListView(
              padding: const EdgeInsets.all(14.0),
              children: [
                /// text mail
                CustomTextField(
                  hintText: LocaleKeys.enterThePassword.tr,
                  labelText: LocaleKeys.newPassword.tr,
                  prefixIcon: Image.asset(Assets.lockIcon),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  hintText: LocaleKeys.enterThePassword.tr,
                  labelText: LocaleKeys.resetNewPassword.tr,
                  prefixIcon: Image.asset(Assets.lockIcon),
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomButton(
                  onPressed: () {},
                  height: 50,
                  width: double.infinity,
                  child: CustomText(LocaleKeys.save.tr,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: 25)),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
