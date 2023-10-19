import 'package:caculate_getx_demo/Caculate/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//被跳转页面,访问更新后的变量
class otherPage extends StatelessWidget{
  //让Get找到一个正在被其他页面使用的controller，并将他返回给你===>此处是c
  final Controller c=Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("result"),
      ),
      body: Center(
        child: Text("result=${c.count}",style: TextStyle(fontSize: 20,color: Colors.green),),
      ),
    );
  }

}