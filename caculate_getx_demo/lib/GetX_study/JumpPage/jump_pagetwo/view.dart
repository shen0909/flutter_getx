import 'package:caculate_getx_demo/GetX_study/JumpPage/jump_pageone/logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logic.dart';

class JumppagetwoPage extends StatelessWidget {
  final twologic = Get.put(Jump_pagetwoLogic());
  final onelogic = Get.find<JumpPageoneLogic>(); //通过Get.find获取到之前实例化的GetxController,通过它去调用相应的事件、方法

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面二"),
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<Jump_pagetwoLogic>(builder: (logic) {
                return Text(
                  "页面二点击了${logic.count}次",
                );
              }),

              GetBuilder<Jump_pagetwoLogic>(builder: (logic) {
                return Text("${logic.msg}");
              }),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          twologic.increase();
          onelogic.increase();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
