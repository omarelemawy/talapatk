import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talapatk/core/theme/app_colors.dart';
import 'package:talapatk/core/widgets/custom_loading.dart';
import 'package:talapatk/features/auth_feature/presentation/account/views/account_view.dart';
import 'package:talapatk/features/auth_feature/presentation/home/views/home_view.dart';
import 'package:talapatk/features/auth_feature/presentation/main_page/controllers/main_page_controller.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageController>(
      builder: (controller) {
        return CustomLoading(
          widget: RefreshIndicator(
            displacement: 250,
            backgroundColor: AppColors.mainApp,
            color: Colors.white,
            strokeWidth: 3,
            triggerMode: RefreshIndicatorTriggerMode.onEdge,
            onRefresh: () async {
              await Future.delayed(const Duration(milliseconds: 800));
              controller.onInit();
            },
            child: Scaffold(
              body: Stack(
                children: [
                  IndexedStack(
                    index: controller.currentIndex,
                    children: const [
                      HomeView(),

                      // SizedBox can't be changed if you want to get the empty space in the middle of the bottom nav bar
                      SizedBox(),
                      AccountView(),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(0)),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          ),
                          child: BottomNavigationBar(
                            type: BottomNavigationBarType.fixed,
                            //bottom navigation bar on scaffold
                            selectedItemColor: AppColors.mainApp,
                            unselectedItemColor: Colors.grey[500],
                            currentIndex: controller.currentIndex,
                            onTap: (value) => controller.setIndex = value,
                            // shape: const CircularNotchedRectangle(), //shape of notch
                            // notchMargin:
                            //     5, //notche margin between floating button and bottom appbar
                            selectedLabelStyle: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontSize: 16.0),
                            unselectedLabelStyle: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontSize: 16.0),
                            items: const <BottomNavigationBarItem>[
                              BottomNavigationBarItem(
                                  label: "أطلب",
                                  icon: Icon(CupertinoIcons.home)),
                              BottomNavigationBarItem(
                                  label: "السلة",
                                  icon: Icon(CupertinoIcons.shopping_cart)),
                              BottomNavigationBarItem(
                                  label: "الحساب",
                                  icon: Icon(CupertinoIcons.person)),
                            ],
                          ),
                        ),
                      ),
                    ),
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
