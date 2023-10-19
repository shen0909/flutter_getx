import 'package:get/get.dart';

class JumpPageoneLogic extends GetxController {

  var count=0;
  //跳转到页面二
  void toJumoTwo(){
    Get.toNamed("/page_two",arguments: {'msg':'这里是从页面一传过来的数据'});
  }
  //自增
  void increase(){
    count++;
    update();
  }
}
