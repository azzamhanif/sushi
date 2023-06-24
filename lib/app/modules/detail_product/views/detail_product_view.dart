import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sushi/app/routes/app_pages.dart';
import 'package:sushi/helper/pallete.dart';
import 'package:sushi/helper/widget_helper.dart';

import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  const DetailProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: (){
                            Get.back();
                          },
                          child: WidgetHelper.entryAnimation(
                            child: ClipRect(
                              child: Icon(Icons.arrow_back,color: Palete.primaryColor,),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: WidgetHelper.entryAnimation(
                            child: Container(
                              child: Text('Detail',style: TextStyle(fontSize: 20),),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16,),
                      WidgetHelper.entryAnimation(
                        child: Container(
                          child: Icon(Icons.more_vert,color: Palete.secondaryColor,),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 32,),
                ///First Section
                WidgetHelper.entryAnimation(
                  delayed: 300,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: Get.width*.5,
                    child: Text(controller.item.subtitle.toString(),style: TextStyle(color: Palete.accentColor,fontSize: 16),),
                  ),
                ),
                WidgetHelper.entryAnimation(
                  delayed: 300,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: Get.width*.5,
                    child: Text(controller.item.title.toString(),style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 32,),

                ///Section 2

                Container(
                  margin: EdgeInsets.only(left: 36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WidgetHelper.entryAnimation(
                        delayed: 300,
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset('assets/avocado.png',width: 40,),
                              Text('Avocado',style: TextStyle(fontSize: 12,color: Palete.secondaryColor),),
                              SizedBox(height: 32,),
                              Image.asset('assets/rice.png',width: 40,),
                              Text('Rice',style: TextStyle(fontSize: 12,color: Palete.secondaryColor)),
                              SizedBox(height: 32,),
                              Image.asset('assets/salmon.png',width: 40,),
                              Text('Salmon',style: TextStyle(fontSize: 12,color: Palete.secondaryColor)),
                              SizedBox(height: 32,),
                            ],
                          ),
                        ),
                      ),
                      Hero(
                        tag: 'imageProduk_'+controller.item.image.toString(),
                        child: ClipRect(
                          child: Image.asset(controller.item.image.toString(),height: 200,),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 32,),

                ///Section 3
                WidgetHelper.entryAnimation(
                  delayed: 600,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text('\$'+controller.amount.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),)),

                        IconButton(
                            onPressed: controller.RemovefromCart,
                            icon: Icon(Icons.remove)
                        ),
                        Text(controller.qty.toString(),style: TextStyle(fontSize: 20),),
                        IconButton(
                            onPressed: controller.AddtoCart,
                            icon: Icon(Icons.add)
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32,),
                WidgetHelper.entryAnimation(
                  delayed: 650,
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Description',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ),
                ),
                SizedBox(height: 8,),
                WidgetHelper.entryAnimation(
                  delayed: 700,
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',style: TextStyle(fontSize: 14,),)
                  ),
                ),
                SizedBox(height: 32,),
                WidgetHelper.entryAnimation(
                  delayed: 700,
                  child: InkWell(
                    onTap: (){
                      Get.toNamed(Routes.CART);
                    },
                    child: Container(
                        width: Get.width,
                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 24),
                        decoration: BoxDecoration(
                            color: Palete.primaryColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('Buy Now',style: TextStyle(color: Colors.white),))
                    ),
                  ),
                ),

                SizedBox(height: 32,),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
