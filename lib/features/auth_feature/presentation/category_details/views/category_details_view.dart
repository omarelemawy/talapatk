import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talapatk/core/routes/app_pages.dart';
import 'package:talapatk/core/widgets/custom_loading.dart';
import 'package:talapatk/core/widgets/custom_text.dart';
import 'package:talapatk/core/widgets/custom_text_field.dart';
import 'package:talapatk/features/auth_feature/presentation/category_details/controllers/category_details_controller.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryDetailsController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: CustomLoading(
              widget: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextField(
                        borderRadius: 20,
                        hintText: "أبحث",
                        prefixIcon: Icon(CupertinoIcons.search),
                        isWithTitle: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomText("أشهر المطاعم القريبه منك",
                          style: context.textTheme.headlineLarge!
                              .copyWith(color: Colors.black, fontSize: 22)),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 230,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 20,
                          ),
                          itemCount: controller.listOfRest.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.network(
                                      controller.listOfRest[index]["image"],
                                      width: 180,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                CustomText(controller.listOfRest[index]["name"],
                                    style: context.textTheme.headlineLarge!
                                        .copyWith(
                                            color: Colors.black, fontSize: 22)),
                                Row(
                                  children: [
                                    const Icon(Icons.watch_later_outlined,
                                        color: Colors.grey, size: 18),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    CustomText(
                                      controller.listOfRest[index]["time"],
                                      textAlign: TextAlign.center,
                                      style: context.textTheme.headlineMedium!
                                          .copyWith(
                                              color: Colors.black,
                                              fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomText("كل المطاعم ",
                          style: context.textTheme.headlineLarge!
                              .copyWith(color: Colors.black, fontSize: 22)),
                      const SizedBox(
                        height: 20,
                      ),
                      ListView.separated(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 25,
                        ),
                        itemCount: controller.listOfRest.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(Routes.resDetails);
                            },
                            child: Row(
                              children: [
                                Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.network(
                                      controller.listOfRest[index]["image"],
                                      width: 100,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        controller.listOfRest[index]["name"],
                                        style: context.textTheme.headlineLarge!
                                            .copyWith(
                                                color: Colors.black,
                                                fontSize: 22)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.watch_later_outlined,
                                            color: Colors.grey, size: 18),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CustomText(
                                          controller.listOfRest[index]["time"],
                                          textAlign: TextAlign.center,
                                          style: context
                                              .textTheme.headlineMedium!
                                              .copyWith(
                                                  color: Colors.black,
                                                  fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              isLoading: controller.isLoading,
            ),
          ),
        );
      },
    );
  }
}
