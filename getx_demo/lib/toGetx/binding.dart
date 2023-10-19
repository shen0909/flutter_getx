import 'package:get/get.dart';
import 'package:getx_demo/toGetx/page/my_detail/my_detail_logic.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MyDetailLogic());
  }

}