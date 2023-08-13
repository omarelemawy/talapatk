import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talapatk/core/widgets/custom_loading.dart';
import 'package:talapatk/core/widgets/custom_text.dart';

import '../controllers/account_controller.dart';

class AccountView extends StatelessWidget {
  const AccountView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      init: AccountController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: CustomLoading(
              widget: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.black, width: 1.5)),
                            child: const Icon(Icons.person, size: 35),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            children: [
                              CustomText(
                                "أهلا بك",
                                style: context.textTheme.headlineLarge!
                                    .copyWith(
                                        color: Colors.black, fontSize: 22),
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 9,
                                    backgroundImage: NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/1200px-Flag_of_Egypt.svg.png",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  CustomText(
                                    "مصر",
                                    style: context.textTheme.headlineSmall!
                                        .copyWith(
                                            color: Colors.black, fontSize: 18),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          const Icon(CupertinoIcons.settings)
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.article_outlined,
                          color: Colors.black,
                        ),
                        title: CustomText("طلباتك",
                            style: context.textTheme.headlineMedium!
                                .copyWith(color: Colors.black, fontSize: 22)),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.local_offer_outlined,
                          color: Colors.black,
                        ),
                        title: CustomText("العروض",
                            style: context.textTheme.headlineMedium!
                                .copyWith(color: Colors.black, fontSize: 22)),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                        ),
                        title: CustomText("التنبيهات",
                            style: context.textTheme.headlineMedium!
                                .copyWith(color: Colors.black, fontSize: 22)),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.help_outline_outlined,
                          color: Colors.black,
                        ),
                        title: CustomText("المساعده",
                            style: context.textTheme.headlineMedium!
                                .copyWith(color: Colors.black, fontSize: 22)),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.info_outline,
                          color: Colors.black,
                        ),
                        title: CustomText("عنا",
                            style: context.textTheme.headlineMedium!
                                .copyWith(color: Colors.black, fontSize: 22)),
                      )
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
