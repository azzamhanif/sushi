import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_track_controller.dart';

class OrderTrackView extends GetView<OrderTrackController> {
  const OrderTrackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrderTrackView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderTrackView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
