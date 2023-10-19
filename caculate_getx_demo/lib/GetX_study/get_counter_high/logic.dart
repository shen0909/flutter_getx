import 'package:get/get.dart';

import 'state.dart';

class GetCounterHighLogic extends GetxController {
  //实例化状态类
  final GetCounterHighState state = GetCounterHighState();

  void increase(){
    state.count++;
    update();
  }

  void reduce(){
    state.count--;
    update();
  }
}
