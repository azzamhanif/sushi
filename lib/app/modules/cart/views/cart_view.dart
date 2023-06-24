import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sushi/app/routes/app_pages.dart';
import 'package:sushi/helper/pallete.dart';
import 'package:sushi/helper/widget_helper.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                            child: Text('Cart',style: TextStyle(fontSize: 20),),
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
                  child: Container(),
                ),
              ),
              WidgetHelper.entryAnimation(
                delayed: 300,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: Get.width*.5,
                    child: Container()
                ),
              ),
              // SizedBox(height: 32,),

              ///Section 2
              Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: ListView.builder(
                        itemCount: controller.items.length,
                        itemBuilder: (context,index){
                          return WidgetHelper.entryAnimation(
                            delayed: 400+(index*100),
                            child: controller.buildItemList(
                                image: controller.items[index]['image'],
                                subtitle: controller.items[index]['subtitle'],
                                title: controller.items[index]['title'],
                                price: controller.items[index]['price']
                            ),
                          );
                        }
                    ),
                  )
              ),

              SizedBox(height: 32,),

              ///Section 3
              WidgetHelper.entryAnimation(
                delayed: 600,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(),
                ),
              ),
              SizedBox(height: 32,),
              WidgetHelper.entryAnimation(
                delayed: 650,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal',),
                        Text('\$24,60',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                      ],
                    )
                ),
              ),
              SizedBox(height: 16,),
              WidgetHelper.entryAnimation(
                delayed: 700,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',),
                        Text('\$24,60',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                      ],
                    )
                ),
              ),
              SizedBox(height: 32,),
              WidgetHelper.entryAnimation(
                delayed: 700,
                child: InkWell(
                  onTap: (){
                    Get.toNamed(Routes.PAYMENT);
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
                          child: Text('Payment',style: TextStyle(color: Colors.white),))
                  ),
                ),
              ),

              SizedBox(height: 32,),
            ],
          ),
        ),
      ),
    );
  }
}
