import 'package:flutter/material.dart';
import 'package:flutter_getx_navigate_button/pages/dashboard/MyDashBoard.dart';
import 'package:flutter_getx_navigate_button/pages/users/users_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      /*initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>MyDashBoard())
      ],*/
      home: MyDashBoard(),
    );
  }
}
