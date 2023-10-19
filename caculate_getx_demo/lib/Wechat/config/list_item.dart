import 'package:caculate_getx_demo/Wechat/pages/chart_page.dart';
import 'package:caculate_getx_demo/Wechat/pages/friend_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/find_page.dart';
import '../pages/profile_page.dart';
//封装成数组
class ListItem{
  /*底部导航栏*/
  static final List<BottomNavigationBarItem> baritems=
  [
      BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label:"首页"
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label:"首页"
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label:"首页"
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label:"首页"
      ),
  ];
  /*底部导航栏对应页面*/
  static List<Widget> bar_page=[
    ChartPage(),//聊天页
    FriendPage(),
    FindPage(),
    ProfilePage(),
  ];
}