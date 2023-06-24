import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi/app/modules/home/product_model.dart';
import 'package:sushi/app/routes/app_pages.dart';
import 'package:sushi/helper/pallete.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  Widget buildProdukItem({image,title,subtitle,price}){
    Product item = Product(price: price,title: title,subtitle: subtitle,image: image);

    return InkWell(
      onTap: (){
        Get.toNamed(Routes.DETAIL_PRODUCT,arguments: {'data':item});
      },
      child: Container(
        width: Get.width*.4,
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 200,
              child: Hero(
                tag: 'imageProduk_'+image,
                child: ClipRect(
                  child: Image.asset(image),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Text(subtitle,style: TextStyle(color: Palete.accentColor),),
            Text(title,style: TextStyle(color: Palete.primaryColor,fontSize: 16,fontWeight: FontWeight.w600),),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(

                    text: TextSpan(
                        style: TextStyle(color: Palete.primaryColor,),
                        text: '\$ ',
                        children: [
                          TextSpan(text: price,
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                        ]
                    )
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Palete.primaryColor
                  ),
                  child: Icon(Icons.add,color: Colors.white,size: 15,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  List<dynamic> items = [
    {
      'image': 'assets/sushi_1.png',
      'subtitle': 'Nori Naki',
      'title': 'Kamikaze Salmon',
      'price': '8.30'
    },
    {
      'image': 'assets/sushi_2.png',
      'subtitle': 'Nori Naki',
      'title': 'Kamikaze Salmon',
      'price': '9.30'
    },
    {
      'image': 'assets/sushi_3.png',
      'subtitle': 'Nori Naki',
      'title': 'Crunch Chicken',
      'price': '7.00'
    },

  ];

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
