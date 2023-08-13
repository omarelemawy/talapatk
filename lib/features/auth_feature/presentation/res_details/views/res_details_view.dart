import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talapatk/core/widgets/custom_loading.dart';
import 'package:talapatk/core/widgets/custom_text.dart';
import 'package:talapatk/features/auth_feature/presentation/res_details/controllers/res_details_controller.dart';

import '../../../../../core/theme/app_colors.dart';

class ResDetailsView extends StatelessWidget {
  const ResDetailsView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResDetailsController>(
      builder: (controller) {
        return CustomLoading(
          widget: Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            body: SafeArea(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5ag54_t4mPACuYo-IKQ41mOZStNhC2qQS6Q&usqp=CAU",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: 15,
                          left: 15,
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.black,
                              ),
                            ),
                          )),
                      Positioned(
                          bottom: -100,
                          child: Material(
                            elevation: 20,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                                width: MediaQuery.of(context).size.width / 1.1,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 80,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Image.network(
                                              "https://bazookaegy.com/public/uploads/offers/s_1671650083104622.jpg",
                                              fit: BoxFit.fill),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText("Bazooka",
                                                style: context
                                                    .textTheme.headlineLarge!
                                                    .copyWith(
                                                        color: Colors.black,
                                                        fontSize: 24)),
                                            CustomText(
                                              "مطعم فريد شكن و بورجر و فراخ",
                                              style: context
                                                  .textTheme.headlineLarge!
                                                  .copyWith(
                                                      color: Colors.grey,
                                                      fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Icon(Icons.info_outline)
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Column(
                                          children: [
                                            CustomText("تكلفة التوصيل"),
                                            CustomText("10ج"),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 1,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        const Column(
                                          children: [
                                            CustomText("وقت التوصيل"),
                                            CustomText("30 دقيقه"),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          isLoading: controller.isLoading,
        );
      },
    );
  }
}
