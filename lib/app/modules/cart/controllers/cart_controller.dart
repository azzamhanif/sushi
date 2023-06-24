import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi/app/modules/home/product_model.dart';
import 'package:sushi/helper/pallete.dart';

class CartController extends GetxController {
  //TODO: Implement CartController
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

  Widget buildItemList({image,title,price,subtitle}){

    return Container(
      margin: EdgeInsets.only(left: 16,right: 16,bottom: 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(image,height: 65,),
          ),
          SizedBox(width: 24,),
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subtitle,style: TextStyle(color: Palete.accentColor),),
                    Text(title,style: TextStyle(color: Palete.primaryColor,fontSize: 14),),
                    SizedBox(height: 8,),
                    Text('\$'+price,style: TextStyle(color: Palete.primaryColor,fontSize: 16,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('1'),
                SizedBox(height: 8,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Palete.primaryColor
                  ),
                  child: Icon(Icons.add,color: Colors.white,size: 10,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
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
