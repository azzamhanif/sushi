import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sushi/helper/pallete.dart';
import 'package:sushi/helper/widget_helper.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: WidgetHelper.entryAnimation(
                            child: ClipRect(
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Palete.primaryColor
                                  ),
                                  child: Icon(Icons.person,color: Colors.white,)),
                            ),
                          ),
                        ),
                      ),
                      WidgetHelper.entryAnimation(
                        child: Container(
                          child: Icon(Icons.search,color: Palete.secondaryColor,),
                        ),
                      ),
                      SizedBox(width: 16,),
                      WidgetHelper.entryAnimation(
                        child: Container(
                          child: Icon(Icons.menu,color: Palete.secondaryColor,),
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
                    width: Get.width*.6,
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Palete.primaryColor,fontSize: 28),
                          text: 'What would you like ',
                          children: [
                            TextSpan(
                                text: 'to order?',
                                style: TextStyle(fontWeight: FontWeight.bold)
                            )
                          ]
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32,),

                ///Section 2
                WidgetHelper.entryAnimation(
                  delayed: 400,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('All',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            SizedBox(height: 4,),
                            Container(
                              height: 4,
                              width: 4,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palete.primaryColor
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 16,),
                        Text('Sushi',style: TextStyle(color: Palete.secondaryColor),),
                        SizedBox(width: 16,),
                        Text('Rameon',style: TextStyle(color: Palete.secondaryColor)),
                        SizedBox(width: 16,),
                        Text('Kimchi',style: TextStyle(color: Palete.secondaryColor)),
                        SizedBox(width: 16,),
                        Text('Karage',style: TextStyle(color: Palete.secondaryColor)),
                        SizedBox(width: 16,),
                        Text('Sashimi',style: TextStyle(color: Palete.secondaryColor)),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 32,),

                WidgetHelper.entryAnimation(
                  delayed: 500,
                  child: Container(
                    child: CarouselSlider(
                      items: controller.items.map(
                              (item) => controller.buildProdukItem(
                              image: item['image'],
                              subtitle: item['subtitle'],
                              title: item['title'],
                              price: item['price'])).toList(),
                      options: CarouselOptions(
                        height: 280,
                        // autoPlay: true,
                        viewportFraction: .5,
                        aspectRatio: 3,
                        enlargeCenterPage: true,
                        // aspectRatio: MediaQuery.of(context).size.height/MediaQuery.of(context).size.width
                      ),
                    ),
                  ),
                ),

                ///Section 3
                WidgetHelper.entryAnimation(
                  delayed: 600,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Special for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  ),
                ),
                SizedBox(height: 16,),
                WidgetHelper.entryAnimation(
                  delayed: 650,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [BoxShadow(
                            color: Palete.secondaryColor.withOpacity(.2),
                            blurRadius: 30,
                            offset: Offset(-2, 10)
                        )]
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/sushi_1.png',height: 80,),
                        SizedBox(width: 8,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(fontSize: 14,color: Palete.primaryColor),
                                      text: 'Only today ',
                                      children: [
                                        TextSpan(text: '25% off',style: TextStyle(fontWeight: FontWeight.bold))
                                      ]
                                  )
                              ),
                              SizedBox(height: 4,),
                              Text('Nori Naki',style: TextStyle(fontSize:12,color: Palete.accentColor),),
                              Text('Kamikaze Salmon',style: TextStyle(fontSize:12,color: Palete.primaryColor,),),
                              SizedBox(height: 8,),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(fontSize: 14,color: Colors.red,decoration: TextDecoration.lineThrough),
                                      text: '~\$8,30~',
                                      children: [
                                        TextSpan(text: ' \$6,22',style: TextStyle(decoration: TextDecoration.none,color: Palete.primaryColor))
                                      ]
                                  )
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right,color: Palete.secondaryColor,)
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 32,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
