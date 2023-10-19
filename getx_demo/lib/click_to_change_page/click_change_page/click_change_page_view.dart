import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'click_change_page_logic.dart';

/*底部导航栏---->点击切换页面*/
class ClickChangePagePage extends StatelessWidget {
  const ClickChangePagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(ClickChangePageLogic());
    final state = Get
        .find<ClickChangePageLogic>()
        .state;

    return Container(
        child: GetBuilder<ClickChangePageLogic>(builder: (logic) {
          return Column(
            children: [
              Expanded(
                  child: PageView.builder(
                      controller: state.pageController,
                      itemCount: state.pageList.length,
                      itemBuilder: (context, index) => state.pageList[index]
                  )
              ),
              BottomNavigationBar(
                onTap: (index) {
                  print("点击了第$index按钮");
                  logic.switchTap(index);
                },
                items: state.BottonItem,
                selectedItemColor: Colors.blue,
                currentIndex: state.selectedIndex,
              )
            ],
          );
        })
    );
  }


}
