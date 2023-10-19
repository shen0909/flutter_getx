import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logic.dart';

class SplashPagePage extends StatelessWidget {
  final logic = Get.put(SplashPageLogic());
  final state = Get.find<SplashPageLogic>().state;

  @override
  Widget build(BuildContext context) {
    double? height;
    //根据平台设置大小
    if(GetPlatform.isDesktop){
      height=450;
    }
    else{
      height=420;
    }
    return Container(
      width: 620,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image:AssetImage('assets/images/03.jpg')
        )
      ),
    );
  }
}
