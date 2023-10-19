import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class GetCounterHighPage extends StatelessWidget {
  //逻辑的实例
  final logic = Get.put(GetCounterHighLogic());
  //由于GetCounterHighLogic被实例化，所以可以直接使用Get.find<GetCounterHighLogic>()拿到实例后的逻辑层，然后拿到state
  /*此时的state是什么？是logic的state*/
  final state = Get.find<GetCounterHighLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("将state和logic分离")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<GetCounterHighLogic>(builder: (logic) {
              return Text("count=${state.count}");
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: ()=>logic.increase(),
                    child: Icon(Icons.add)),
                SizedBox(width: 20,),
                ElevatedButton(
                    onPressed: ()=>logic.reduce(),
                    child: Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
