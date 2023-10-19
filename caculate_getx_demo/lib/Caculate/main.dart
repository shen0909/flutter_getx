import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'other_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:MyHomePage(),
    );
  }
}
//创建界面，getx中不再需要使用stf
class  MyHomePage extends StatelessWidget {

  //使用Get.put实例化一个Controller()类，使它可以用当下所有的子路由
  final Controller controller=Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //使用Obx(（）=>)，每当计数改变，就更新Text()
        title:Obx(
                ()=>Text("Click:${controller.count}")
        ) ,
      ),
      body: Center(
        child: Column(
          children: [
            //状态会随之改变
            GetX<Controller>(
                builder:(controller){
                  return Text("${controller.count}");
                }
            ),
            ElevatedButton(
              //Get.to可以替代Navigator.push那8行，无需上下文=====>页面跳转
              //Get.to导航到新页面
              onPressed:()=>Get.to(otherPage()) ,
              child: Text("点击跳转"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>controller.increment(),
        child: Icon(Icons.add_box),
      ),
    );
  }
}

//创建业务类,将所有的变量、方法、控制器都放在里面，使用.obs则可以使变量变成可观察
class Controller extends GetxController{
  var count=0.obs;
  increment()=>count++;


}




