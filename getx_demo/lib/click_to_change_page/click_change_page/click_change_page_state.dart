import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:getx_demo/click_to_change_page/pages/setting_page.dart';
import '../pages/home_page.dart';

class ClickChangePageState {

  List<BottomNavigationBarItem> BottonItem=[];
   int selectedIndex=0;
  //页面信息
  late List<Widget> pageList;
  late PageController pageController;

  ClickChangePageState() {

    BottonItem=[
      BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.yellow,),label: "首页"),
      BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.yellow,),label: "首页"),
      BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.yellow,),label: "首页"),
      BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.yellow,),label: "首页"),
      BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.yellow,),label: "首页"),
      BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.yellow,),label: "首页"),
    ];

    pageList=[
      HomePage(),
      SettingPage(),
      HomePage(),
      SettingPage(),
      HomePage(),
      SettingPage(),
    ];
    pageController=PageController(initialPage: 0,keepPage: true);
  }
}
