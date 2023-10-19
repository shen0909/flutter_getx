import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Routers/router.dart';

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
      initialRoute: RouterName.main,
      getPages:RouterName.getpage,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
