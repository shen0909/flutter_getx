import 'package:caculate_getx_demo/Route/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Demo",
      getPages: [
        GetPage(name: '/second', page:()=>SecondePage())
      ],
      home:Main_page(),
      //使用GetMaterialApp时，监听Get事件来触发动作要使用routingCallback
      routingCallback: (routing){
        if(routing?.current=='/second'){

          print("正在第二个页面");
        }
      },
    );
  }
}
class Main_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed:()=>Get.toNamed("/second") ,
              child: Text("点击跳转"),
            ),
            //Get.snackbar("Hi", "我也不知道说些社么"),
          ],
        ),
      ),
    );
  }
}








