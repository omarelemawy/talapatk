import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talapatk/core/consts/assets.dart';
import 'package:talapatk/core/languages/app_translations.dart';
import 'package:talapatk/core/widgets/custom_button.dart';
import 'package:talapatk/core/widgets/custom_loading.dart';
import 'package:talapatk/core/widgets/custom_text.dart';
import 'package:talapatk/core/widgets/custom_text_field.dart';
import 'package:talapatk/features/auth_feature/presentation/login/controllers/login_controller.dart';

import '../../../../../core/theme/app_colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return CustomLoading(
          widget: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppBar(
              elevation: 0,
              title: CustomText(
                LocaleKeys.login.tr,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.black, fontSize: 25),
              ),
              leading: const Icon(
                Icons.close,
                color: AppColors.textBoldColor,
              ),
            ),
            body: Form(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return LocaleKeys.enterPhoneNumber.tr;
                        }
                        return null;
                      },
                      labelText: LocaleKeys.phoneNumber.tr,
                      hintText: LocaleKeys.enterPhoneNumber.tr,
                      textEditingController: controller.mobileController,
                      prefixIcon: const Icon(Icons.phone_android),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return LocaleKeys.emptyPassword.tr;
                        } else if (value.length < 8) {
                          return LocaleKeys.enterValidPassword.tr;
                        }
                        return null;
                      },
                      isObscure: controller.isObscure,
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.isObscure = !controller.isObscure;
                          controller.update();
                        },
                        icon: Icon(
                          controller.isObscure == false
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      hintText: LocaleKeys.enterPass.tr,
                      labelText: LocaleKeys.pass.tr,
                      textEditingController: controller.passController,
                      prefixIcon: Image.asset(Assets.lockIcon),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    CustomButton(
                      onPressed: () {
                        // controller.login();
                      },
                      height: 50,
                      width: double.infinity,
                      child: CustomText(LocaleKeys.login.tr,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontSize: 25)),
                    )
                  ],
                ),
              ),
            ),
          ),
          isLoading: controller.isLoading,
        );
      },
    );
  }
}
