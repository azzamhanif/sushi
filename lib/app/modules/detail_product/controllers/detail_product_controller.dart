import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi/app/modules/home/product_model.dart';
import 'package:sushi/helper/pallete.dart';

class DetailProductController extends GetxController {
  //TODO: Implement DetailProductController

  late Product item;
  var qty = 1.obs;
  var amount = 0.0;
  final count = 0.obs;

  void InitialLoad(){
    item = Product(
        image: Get.arguments['data'].image,
        subtitle: Get.arguments['data'].subtitle,
        title: Get.arguments['data'].title,
        price: Get.arguments['data'].price);

    amount = double.parse(item.price.toString());
  }

  void AddtoCart(){
    qty+=1;
    amount = double.parse(item.price.toString()) * qty.value;
  }
  void RemovefromCart(){
    if(qty>1){
      qty -= 1;
      amount = double.parse(item.price.toString()) * qty.value;
    }
  }

  List<dynamic> items = [
    {
      'image': 'assets/sushi_1.png',
      'subtitle': 'Nori Naki',
      'title': 'Kamikaze Salmon',
      'price': '8,30'
    },
    {
      'image': 'assets/sushi_2.png',
      'subtitle': 'Nori Naki',
      'title': 'Kamikaze Salmon',
      'price': '9,30'
    },
    {
      'image': 'assets/sushi_3.png',
      'subtitle': 'Nori Naki',
      'title': 'Crunch Chicken',
      'price': '7,00'
    },

  ];

  @override
  void onInit() {
    super.onInit();
    InitialLoad();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
