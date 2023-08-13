import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MapPageController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool mapType = true;

  bool isLoading = false;
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

   changeMapType() {
    mapType = !mapType;
    update();
    
  }
}
