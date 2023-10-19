import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_navigate_button/pages/dashboard/dash_board_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../navigation/BottomNavyBarItem.dart';
import '../../navigation/custom_animated_bottom_bar.dart';
import '../add/add_page.dart';
import '../home/home_page.dart';
import '../messages/messages_page.dart';
import '../users/users_page.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({Key? key}) : super(key: key);

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {

  /*当前选中的页面*/
  final _inactiveColor = Colors.grey;

  /*未选中的颜色*/

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDashBoardController>(builder: (logic) {
      return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: logic.tabIndex,
              children: [
                HomePage(),
                UsersPage(),
                MessagesPage(),
                AddPage(),
              ],
            ),
          ),
          bottomNavigationBar: _buildBottomBar()
      );
    });
  }

  Widget _buildBottomBar() {
    return GetBuilder<MyDashBoardController>(builder: (logic) {
      return CustomAnimatedBottomBar(
        containerHeight: 70,
        backgroundColor: Colors.white,
        selectedIndex: logic.tabIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.decelerate,
        onItemSelected:logic.change_current_index,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.green,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Users'),
            activeColor: Colors.purpleAccent,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text(
              'Messages ',
            ),
            activeColor: Colors.pink,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.blue,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
        ],
      );
    });
  }
}
