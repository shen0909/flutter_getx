import 'package:get/get.dart';

class Counter_get_RXLogic extends GetxController {
      var count=0.obs;
      //自增
      void increase(){
        count++;
        //update();
      }
      //自减
      void reduce(){
        count--;
        //update();
      }
}
