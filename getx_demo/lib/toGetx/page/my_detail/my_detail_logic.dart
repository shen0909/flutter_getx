import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'my_detail_state.dart';

class MyDetailLogic extends GetxController {
  final MyDetailState state = MyDetailState();

  /*@override
  void onInit() {
    super.onInit();
    // 将state绑定到GetxController中
    ever<RxInterface>(state, (_) => update());
  }*/
  readDate(BuildContext context) async {
    print("读取detail页的图片");
    await DefaultAssetBundle.of(context).loadString("json/img.json").then((value) {
      print("未解码的数据img:$value");
      state.img=json.decode(value);
      print("解码后的数据img:${state.img}");
    });
    update();
}


  transper(Map<String,dynamic> infos){
    print("从content页面接收到的信息infos:${infos}");
    state.info['name']=infos['name'];
    print("state.info的数据为:${state.info}");
    update();
  }
}
