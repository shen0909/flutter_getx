import 'package:get/get.dart';

class MyDashBoardController extends GetxController{

  var tabIndex=0;
  void change_current_index(int index){
    tabIndex=index;
    update();
  }

}