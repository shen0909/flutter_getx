import 'package:flutter_getx_navigate_button/GetX/pages/home/home_controller.dart';
import 'package:flutter_getx_navigate_button/pages/add/add_controller.dart';
import 'package:flutter_getx_navigate_button/pages/dashboard/dash_board_controller.dart';
import 'package:get/get.dart';

class DashBoardBinding extends Bindings{

  /*依赖项*/
  @override
  void dependencies() {
    // TODO: implement dependencies
    /*Get.lazyPut<MyDashBoardController>(() => MyDashBoardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AddController>(() => AddController());
    Get.lazyPut<AddController>(() => AddController());*/
    Get.put(MyDashBoardController());
    Get.put(HomeController());
  }

}