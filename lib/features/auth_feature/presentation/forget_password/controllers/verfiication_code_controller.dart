import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCodeController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;
}
