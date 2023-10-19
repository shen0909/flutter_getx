import 'package:caculate_getx_demo/GetX_study/JumpPage/jump_pageone/view.dart';
import 'package:caculate_getx_demo/GetX_study/get_counter_high/view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'JumpPage/jump_pagetwo/view.dart';
import 'counter_get_GetBuild/view.dart';
import 'counter_get__rx/view.dart';
//命名路由配置封装

class Routeconfig{
  ///GetX 计算器 跨页面交互
  static final List<GetPage> routes=[
    GetPage(name: "/jiandan", page:()=> CounterGetEasyPage()),
    GetPage(name: "/xiangying", page:()=> Counter_get_RXPage()),
    GetPage(name: "/page_one", page:()=> JumpPageonePage()),
    GetPage(name: "/page_two", page:()=> JumppagetwoPage()),
    GetPage(name: "/count_get", page:()=> GetCounterHighPage()),
  ];
}