import 'package:caculate_getx_demo/Wechat/config/list_item.dart';
import 'package:caculate_getx_demo/Wechat/pages/chart_page.dart';
import 'package:caculate_getx_demo/Wechat/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: WeRouter.splash,
      title: "WeChat",
      home: HYHomePage(),
    );
  }
}
class HYHomePage extends StatefulWidget {

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  int _contentpage=0;//当前显示页面

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: IndexedStack(
        index:_contentpage,//当前显示页面
        children: ListItem.bar_page,
        ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor:Colors.green ,
        items: ListItem.baritems,/*BottomNavigationBarItem的列表===>全是子类*/
        currentIndex: _contentpage,
        onTap:(index){
          setState((){
            _contentpage=index;
          });
        },
        //onTap是ValueChanged<int>类型，
        //typedef ValueChanged<T> = void Function(T value);  ValueChanged<T>是一个带参的函数
        //使用onTap会返回一个参数，这个

      ),
    );
  }
}