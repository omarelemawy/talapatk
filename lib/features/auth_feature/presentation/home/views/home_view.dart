import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talapatk/core/consts/assets.dart';
import 'package:talapatk/core/routes/app_pages.dart';
import 'package:talapatk/core/theme/app_colors.dart';
import 'package:talapatk/core/widgets/custom_button.dart';
import 'package:talapatk/core/widgets/custom_loading.dart';
import 'package:talapatk/features/auth_feature/presentation/home/controllers/home_controller.dart';

import '../../../../../core/widgets/custom_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: CustomLoading(
            widget: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration:
                        const BoxDecoration(color: AppColors.lightMainApp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        CustomText("التوصيل الي",
                            style: context.textTheme.headlineMedium!.copyWith(
                                color: Colors.black.withOpacity(.5),
                                fontSize: 20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: CustomText(
                                "الغربية زفتي شارع الدهب 13 س ",
                                style: context.textTheme.headlineMedium!
                                    .copyWith(
                                        color: Colors.black, fontSize: 22),
                                overflow: TextOverflow.ellipsis,
                                max: 1,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 30,
                              color: AppColors.mainApp,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText("أهلا بك!",
                                      style: context.textTheme.headlineLarge!
                                          .copyWith(
                                              color: Colors.black,
                                              fontSize: 30)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                      "سجل دخول أو أنشأ حساب لتتمتع بتوصيل سريع ",
                                      style: context.textTheme.headlineMedium!
                                          .copyWith(
                                              color: Colors.black,
                                              fontSize: 20)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CustomButton(
                                    onPressed: () {},
                                    child: CustomText(
                                      "أنشأ حساب",
                                      style: context.textTheme.headlineLarge!
                                          .copyWith(
                                              color: Colors.white,
                                              fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              Assets.homeImage,
                              fit: BoxFit.cover,
                              height: 150,
                              width: 200,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.categoryDetails);
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                              255, 255, 235, 230)),
                                      child: Row(
                                        children: [
                                          CustomText(
                                            "طعام",
                                            style: context
                                                .textTheme.headlineLarge!
                                                .copyWith(
                                                    color: Colors.black,
                                                    fontSize: 22),
                                          ),
                                          const Spacer(),
                                          Image.network(
                                            "https://freepngimg.com/thumb/burger%20sandwich/46-hamburger-burger-png-image.png",
                                            width: 100,
                                            height: 80,
                                          )
                                        ],
                                      )),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromARGB(
                                            255, 255, 235, 230)),
                                    child: Row(
                                      children: [
                                        CustomText(
                                          "طلباتك",
                                          style: context
                                              .textTheme.headlineLarge!
                                              .copyWith(
                                                  color: Colors.black,
                                                  fontSize: 22),
                                        ),
                                        const Spacer(),
                                        Image.network(
                                          "https://freepngimg.com/thumb/grocery/41619-7-groceries-free-download-image.png",
                                          width: 100,
                                          height: 80,
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              {
                                "image":
                                    "https://freepngimg.com/thumb/grocery/41624-7-groceries-hd-download-hd-png.png",
                                "name": "البقالة"
                              },
                              {
                                "image":
                                    "https://freepngimg.com/thumb/pills/27165-8-pills-hd.png",
                                "name": "الصحة"
                              },
                              {
                                "image":
                                    "https://freepngimg.com/thumb/drinks/54354-7-ice-drink-png-free-photo.png",
                                "name": "مشروبات"
                              },
                              {
                                "image":
                                    "https://freepngimg.com/thumb/shopping/13-2-shopping-free-png-image.png",
                                "name": "المزيد من المنتجات"
                              }
                            ]
                                .map(
                                  (e) => Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: const Color.fromARGB(
                                                      255, 255, 235, 230)),
                                              child: Image.network(
                                                e["image"]!,
                                                width: 80,
                                                height: 60,
                                              )),
                                          CustomText(
                                            e["name"],
                                            textAlign: TextAlign.center,
                                            style: context
                                                .textTheme.headlineLarge!
                                                .copyWith(
                                                    color: Colors.black,
                                                    fontSize: 22),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CarouselSlider.builder(
                            itemCount: controller.list.length,
                            carouselController: controller.carouselController,
                            itemBuilder: (BuildContext context, int itemIndex,
                                    int pageViewIndex) =>
                                Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.network(
                                      controller.list[itemIndex],
                                      fit: BoxFit.cover,
                                    )),
                            options: CarouselOptions(
                                height: 200.0,
                                pageSnapping: true,
                                enlargeCenterPage: false,
                                viewportFraction: 1,
                                aspectRatio: 2.0,
                                onPageChanged: (index, s) {
                                  controller.setIndex = index.toDouble();
                                }),
                          ),
                          Center(
                            child: DotsIndicator(
                              dotsCount: 4,
                              position: controller.carouselIndex,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomText(
                            "أشهر ألاماكن القريبه منك",
                            style: context.textTheme.headlineLarge
                                ?.copyWith(color: Colors.black, fontSize: 24),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 180,
                            child: ListView.builder(
                              itemCount: controller.listOfRest.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.network(
                                            controller.listOfRest[index]
                                                ["image"],
                                            width: 80,
                                            height: 60,
                                            fit: BoxFit.cover,
                                          )),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      CustomText(
                                        controller.listOfRest[index]["name"],
                                        textAlign: TextAlign.center,
                                        style: context.textTheme.headlineLarge!
                                            .copyWith(
                                                color: Colors.black,
                                                fontSize: 22),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.watch_later_outlined,
                                              color: Colors.grey, size: 18),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          CustomText(
                                            controller.listOfRest[index]
                                                ["time"],
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
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            isLoading: controller.isLoading,
          ),
        );
      },
    );
  }
}
