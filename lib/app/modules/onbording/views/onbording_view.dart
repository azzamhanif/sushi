import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sushi/helper/pallete.dart';

import '../controllers/onbording_controller.dart';

class OnbordingView extends GetView<OnbordingController> {
  const OnbordingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Palete.primaryColor,
                  Palete.gradasiColor
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        child: AnimatedOpacity(
          opacity: controller.visible.value?1.0:0.0,
          duration: Duration(milliseconds: 500),
          child: Column(
            children: [
              SizedBox(height: Get.height*.2,),

              Entry(
                yOffset: -50,
                opacity: 0,
                curve: Curves.fastOutSlowIn,
                duration: Duration(milliseconds: 1000),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Image.asset('assets/onboarding.png')
                ),
              ),

              SizedBox(height: 64,),
              Entry(
                  yOffset: -50,
                  opacity: 0,
                  curve: Curves.fastOutSlowIn,
                  delay: Duration(milliseconds: 1000),
                  duration: Duration(milliseconds: 1000),
                  child: Text('伊那寿司',style: TextStyle(color: Colors.white,fontSize: 40),)),
              SizedBox(height: 16,),
              Entry(
                yOffset: -50,
                opacity: 0,
                curve: Curves.fastOutSlowIn,
                delay: Duration(milliseconds: 1500),
                duration: Duration(milliseconds: 1000),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 64),
                  child: Text('The best fresh sushi delivered straight to your door',
                    style: TextStyle(color: Colors.white,fontSize: 16,),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 32,),
              Entry(
                yOffset: 50,
                opacity: 0,
                curve: Curves.fastOutSlowIn,
                delay: Duration(milliseconds: 1500),
                duration: Duration(milliseconds: 1000),
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () async{
                      controller.visible.value = !controller.visible.value;

                      // await Future.delayed(Duration(milliseconds: 500));

                      Get.offNamed('/home');
                    },
                    child: Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text('Get Started',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
