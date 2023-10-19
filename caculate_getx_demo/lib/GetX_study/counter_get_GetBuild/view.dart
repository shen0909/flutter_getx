import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CounterGetEasyPage extends StatelessWidget {

  //使用Get.put实例化一个Controller()类，使它可以用当下所有的子路由
  final logic = Get.put(CounterGetEasyLogic());
  var count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("简单计数器"),
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
              GetBuilder<CounterGetEasyLogic>(builder: (logic) {
                return Container(
                    decoration: BoxDecoration(
                      color:Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),
                    ),
                    child: Text("${logic.count}"));
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

