import 'package:get/get.dart';

import 'click_change_page_state.dart';

class ClickChangePageLogic extends GetxController {
  final ClickChangePageState state = ClickChangePageState();


  void switchTap(int index){
    state.selectedIndex = index;
    state.pageController.jumpToPage(index);
    update();
  }
}
