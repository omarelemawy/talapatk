import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryDetailsController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
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
}
