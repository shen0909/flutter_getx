//没有使用GetMaterial时监听需要手动

//创建一个MiddleWare类

import 'package:caculate_getx_demo/Route/second_page.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        body: Text("什么都没用"),
      ),
      routes: {
        "/second":(ctx)=>SecondePage(),
      },
      navigatorObservers: [
       // GetObserver(MiddleWare.observer()),
      ],
    );
  }
}

class MiddleWare{
  //观察监听路由
  static observer(Routing routing){
    if(routing.current=='/second'){
      Get.snackbar("hi", "当前正在第二页");
    }
  }

}
