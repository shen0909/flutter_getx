import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Counter_get_RXPage extends StatelessWidget {
  final logic = Get.put(Counter_get_RXLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("响应计数器"),
      ),
      body: Content_page(),
    );
  }

  Widget Content_page() {
    return Center(
      child: Container(
          decoration: BoxDecoration(
            color:Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),
          ),
          child: Column(
            children: [
              Obx(() {
                return Container(
                    decoration: BoxDecoration(
                      color:Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),
                    ),
                    child: Text("${logic.count.value}")
                );
              }),
              Row(
                children: [
                  //+
                  ElevatedButton(
                      onPressed: () => logic.increase(),
                      child: Icon(Icons.add)),
                  //-
                  SizedBox(width: 20,),
                  ElevatedButton(
                      onPressed: () => logic.reduce(),
                      child: Icon(Icons.remove))
                ],
              )
            ],
          )
      ),
    );
  }
}
