import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class JumpPageonePage extends StatelessWidget {
  final logic = Get.put(JumpPageoneLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("页面一"),),
      ),
      body: Center(
        child: GetBuilder<JumpPageoneLogic>(builder: (logic) {
          return Text(
              "页面二点击了${logic.count}次",
          );
        }),
      ),
      //点击跳转到页面二
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () => logic.toJumoTwo(),
      ),
    );
  }
}
