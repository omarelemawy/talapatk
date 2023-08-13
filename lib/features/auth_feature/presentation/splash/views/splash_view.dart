import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talapatk/core/consts/assets.dart';
import 'package:talapatk/features/auth_feature/presentation/splash/controllers/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Image.asset(Assets.logo),
          ),
        );
      },
    );
  }
}
