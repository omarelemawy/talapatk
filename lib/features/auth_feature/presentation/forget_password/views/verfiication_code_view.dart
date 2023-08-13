import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:talapatk/core/theme/app_colors.dart';
import 'package:talapatk/core/widgets/custom_loading.dart';
import 'package:talapatk/features/auth_feature/presentation/forget_password/controllers/verfiication_code_controller.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerificationCodeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: CustomText(
              "كود التأكيد",
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20.0),
                    CustomText(
                      "ادخل الكود المكون من 4 ارقام المرسل الى",
                      textAlign: TextAlign.right,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: AppColors.textLightColor),
                    ),
                    CustomText(
                      "010 2545 222 5",
                      textAlign: TextAlign.right,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: AppColors.textBoldColor),
                    ),
                    const SizedBox(height: 30.0),

                    /// code
                    PinCodeTextField(
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        activeFillColor:
                            const Color(0xffAEAEAE).withOpacity(.2),
                        activeColor: const Color(0xffAEAEAE).withOpacity(.2),
                        borderWidth: 1,
                        selectedColor: const Color(0xff273269),
                        selectedFillColor:
                            const Color(0xffAEAEAE).withOpacity(.2),
                        inactiveFillColor:
                            const Color(0xffAEAEAE).withOpacity(.2),
                        inactiveColor: const Color(0xffAEAEAE).withOpacity(.2),
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      cursorColor: const Color(0xff273269),
                      controller: controller.textEditingController,
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {},
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                      appContext: context,
                    ),

                    const SizedBox(height: 40.0),
                    CustomButton(
                      onPressed: () {
                        // Get.toNamed(Routes.changePassword);
                      },
                      height: 50,
                      width: double.infinity,
                      child: CustomText("تاكيد",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontSize: 25)),
                    )
                  ]),
            ),
            isLoading: controller.isLoading,
          ),
        );
      },
    );
  }
}
