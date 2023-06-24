import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sushi/app/routes/app_pages.dart';
import 'package:sushi/helper/pallete.dart';
import 'package:sushi/helper/widget_helper.dart';

import '../controllers/confirmation_controller.dart';

class ConfirmationView extends GetView<ConfirmationController> {
  const ConfirmationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetHelper.entryAnimation(
                  child: Icon(Icons.verified_outlined,color: Palete.accentColor,size: 100,)),
              SizedBox(height: 32,),
              WidgetHelper.entryAnimation(
                  delayed: 300,
                  child: Text('Congratulation!',style: TextStyle(fontSize: 32,color: Palete.accentColor),)),
              SizedBox(height: 4,),
              WidgetHelper.entryAnimation(
                  delayed: 350,
                  child: Text('your order is being processed',style: TextStyle(fontSize: 16,color: Palete.accentColor),)),
              SizedBox(height: 32,),
              WidgetHelper.entryAnimation(
                delayed: 400,
                child: InkWell(
                  onTap: (){
                    Get.offAllNamed(Routes.HOME);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 64),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Palete.accentColor.withOpacity(.15),
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.chevron_right,color: Palete.accentColor,size: 32,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
