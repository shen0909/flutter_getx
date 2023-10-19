import 'package:flutter/material.dart';
import 'package:flutter_getx_navigate_button/GetX/pages/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  final controller=Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // "Home page",
          controller.title,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Home Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
