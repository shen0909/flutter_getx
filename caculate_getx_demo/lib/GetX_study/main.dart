import 'package:caculate_getx_demo/GetX_study/route_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'counter_get_GetBuild/view.dart';
import 'counter_get__rx/view.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routeconfig.routes,
      title: "Flutter Demo",
      home: HYHomePage(),
    );
  }
}
class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink),fixedSize: MaterialStateProperty.all(Size(150, 50))),
              onPressed: ()=>Get.toNamed('/jiandan'),
              child: Text("简单状态计数器")),
          SizedBox(width: 30,),
          ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink),fixedSize: MaterialStateProperty.all(Size(150, 50))),
              onPressed: ()=>Get.toNamed('/xiangying'),
              child: Text("响应式计数器")),
          SizedBox(width: 30,),
          ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink),fixedSize: MaterialStateProperty.all(Size(150, 50))),
              onPressed: ()=>Get.toNamed('/page_one'),
              child: Text("进入页面一")),
          SizedBox(width: 30,),
          ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink),fixedSize: MaterialStateProperty.all(Size(150, 50))),
              onPressed: ()=>Get.toNamed('/count_get'),
              child: Text("logic和state分离")),
        ],
      ),
    );
  }
}