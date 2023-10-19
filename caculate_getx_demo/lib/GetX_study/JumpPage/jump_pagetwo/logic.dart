import 'package:get/get.dart';
//GetxController包含比较完整的生命周期回调，可以在onInit()中接受传递的数据，
// 如果传递的数据需要刷新到界面上时，可以在onReady回调里接收数据
class Jump_pagetwoLogic extends GetxController {
  var count=0;
  var msg='';

  void onReady(){
    var map=Get.arguments;
    msg=map['msg'];
    update();
    super.onReady();
  }

  void increase(){
    count++;
    update();
  }
}
