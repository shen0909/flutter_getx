import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_demo/toGetx/page/my_detail/my_detail_logic.dart';
import 'package:getx_demo/toGetx/page/my_detail/my_detail_state.dart';
import '../../Routers/router.dart';
import 'content_state.dart';

class ContentLogic extends GetxController {
  final ContentState state = ContentState();
  final MyDetailState myDetailState=MyDetailState();
  final MyDetailLogic myDetailLogic=MyDetailLogic();

  readDate(BuildContext context) async {
    await DefaultAssetBundle.of(context).loadString("json/recent.json").then((value) {
      print("GetX----获取json数据:读取recent数据");
      print("未解码的数据list:$value");
      state.list=json.decode(value);
      print("解码后的数据list:${state.list}");
    });

    await DefaultAssetBundle.of(context).loadString("json/detail.json").then((value) {
      print("GetX----获取json数据:读取detail数据");
      print("未解码的数据info:$value");
      state.info=json.decode(value);
      print("解码后的数据info:${state.info}");
    });
    update();
  }

  //点击跳转页面
  toPage(Map<String,dynamic> info){
    // myDetailState.info=info;
    print("即将传入myDetail页面的信息:$info");
    // myDetailLogic.transper(info);
    Get.find<MyDetailLogic>().state.info.addAll(info);
    print("Get.find<MyDetailLogic>().state.info:${Get.find<MyDetailLogic>().state.info}");
    Get.toNamed(RouterName.detail);
    // Get.toNamed(RouterName.detail,arguments: {'info': info});
    update();
  }

}
