import 'package:get/get.dart';
//使用继承自Getxcontroller的update()函数，如果数据发生变化，则更新，如果没有变化，则不变
class CounterGetEasyLogic extends GetxController {
  int count=0;
  //自增
  void increase(){
    count++;
    update();
  }
  //自减
  void reduce(){
    count--;
    update();
  }

}
