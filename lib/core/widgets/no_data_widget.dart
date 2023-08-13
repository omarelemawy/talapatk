import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:talapatk/core/consts/assets.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 250,
      child: LottieBuilder.asset(Assets.noData),
    );
  }
}
