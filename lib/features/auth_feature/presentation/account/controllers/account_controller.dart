import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AccountController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  double carouselIndex = 0;
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;
  List list = [
    "https://www.shutterstock.com/image-vector/fast-food-restaurant-business-marketing-600w-2051656400.jpg",
    "https://www.shutterstock.com/image-photo/woman-ordering-her-grocery-online-600w-2153790727.jpg",
    "https://www.shutterstock.com/image-vector/fast-food-restaurant-business-marketing-600w-2071313912.jpg",
    "https://www.shutterstock.com/image-vector/fast-delivery-by-scooter-on-600w-1540323023.jpg",
  ];
  List listOfRest = [
    {
      "image":
          "https://bazookaegy.com/public/uploads/offers/s_1671650083104622.jpg",
      "name": "Bazooka",
      "time": "46 mins"
    },
    {
      "image":
          "https://kfcprodnecmsimage.azureedge.net/cmsimages/kfc/imagestemp/desktop/ic_for_sharing3x0211.png",
      "name": "KFC",
      "time": "23 mins"
    },
    {
      "image":
          "https://img.youm7.com/ArticleImgs/2019/9/30/78152-R4w5X1bV4Mhm5Otvh6C4sKoT1Iut8yqUxgafsZ8p.jpg",
      "name": "كشري الزعيم",
      "time": "50 mins"
    },
    {
      "image":
          "https://egyptianbites.com/wp-content/uploads/2023/04/%D9%81%D9%88%D9%84-%D8%AD%D9%88%D8%AF%D9%87-1024x686.jpg",
      "name": "أبناء المحله",
      "time": "46 mins"
    },
    {
      "image":
          "https://bazookaegy.com/public/uploads/offers/s_1671650083104622.jpg",
      "name": "Bazooka",
      "time": "46 mins"
    },
  ];
  CarouselController carouselController = CarouselController();

  set setIndex(index) {
    carouselIndex = index;
    update();
  }
}
