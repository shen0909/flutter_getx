import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_demo/my_detail_page.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {

  List list=[];
  List info=[];

  //读取本地的json文件，并将其解码成一个列表
  /*使用DefaultAssetBundle.of(context)获取上下文默认的资源包
   *使用loadString方法异步加载指定路径下的json文件
   *使用then()方法获取加载的结果并将结果作为参数传递给一个匿名函数
   *匿名函数内部的作用是:将获取到的结果解码并保存到list中
   * 使用json.decode()方法将json字符串解码成一个map对象
   *所以info、list是一个元素为map类型的列表*/
  _readDate() async {
    await DefaultAssetBundle.of(context).loadString("json/recent.json").then((value) {
      print("未解码的数据value:$value");
      setState(()=>list=json.decode(value));
      print("解码后的数据list:$list");
    });

    await DefaultAssetBundle.of(context).loadString("json/detail.json").then((value) {
      print("未解码的数据value:$value");
      setState(()=>info=json.decode(value));
      print("解码后的数据info:$info");
    });
  }
  @override
  void initState() {
    _readDate();
    super.initState();
  }

  /*加载json文件*/


  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc5e5f3),
        elevation: 0,
      ),
      body: Container(
        // padding: EdgeInsets.only(top:70),
        color:Color(0xFFc5e5f3),
        child: Column(
          children: [
            Container(
              width: width,
              height: 100,
              margin: const EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Color(0xFFebf8fd),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                          "img/background.jpg"
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "James Smith",
                          style: TextStyle(
                              color:Color(0xFF3b3f42),
                              fontSize: 18,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Text(
                          "Top Level",
                          style: TextStyle(
                              color:Color(0xFFfdebb2),
                              fontSize: 12,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:Color(0xFFf3fafc)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.notifications,
                          color:Color(0xFF69c5df),
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: [
                  Text(
                    "Popular Contest",
                    style: TextStyle(
                        color:Color(0xFF1f2326),
                        fontSize: 20,
                        decoration: TextDecoration.none
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "Show all",
                    style: TextStyle(
                        color:Color(0xFFcfd5b3),
                        fontSize: 15,
                        decoration: TextDecoration.none
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFfdc33c)
                    ),
                    child: GestureDetector(
                      onTap: ()=>null,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height:220,
              child: PageView.builder(
                  controller: PageController(viewportFraction: 0.88),
                  itemCount: info.length,
                  itemBuilder: (_,index){
                    return GestureDetector(
                      onTap: ()=>Get.toNamed(
                          "\detail",
                          arguments:{
                            'infoitem':info[index],
                        /*'title':info[index]["title"].toString(),
                        'name':info[index]["name"].toString(),
                        'prize':info[index]["prize"].toString(),
                        'text':info[index]["text"].toString(),
                        'img':info[index]["img"].toString(),*/
                      }),
                      child: Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width-20,
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:index.isEven?Color(0xFF69c5df):Color(0xFF9294cc)
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  info[index]["title"],
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                      color:Colors.white
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: width,
                              child: Text(
                                info[index]["text"],
                                style: TextStyle(
                                    fontSize: 20,
                                    color:Color(0xFFb8eefc)
                                ),
                              ),
                            ),
                            Divider(thickness: 1.0,),
                            Row(
                              children: [
                                for(int i=0;i<info.length;i++)
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              info[i]["img"]
                                          ),
                                          fit: BoxFit.cover
                                      )
                                    ),
                                  )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.only(left: 25,right: 25),
              child: Row(
                children: [
                  Text(
                    "Recent Contests",
                    style: TextStyle(
                        color:Color(0xFF1f2326),
                        fontSize: 20,
                        decoration: TextDecoration.none
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "Show all",
                    style: TextStyle(
                        color:Color(0xFFcfd5b3),
                        fontSize: 15,
                        decoration: TextDecoration.none
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFfdc33c)
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
                child: ListView.builder(
                    itemCount: list.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (_,index){
                      return GestureDetector(
                        onTap: ()=>Get.to(DetailPage()),
                        child: Container(
                          width: width,
                          height: 100,
                          margin: EdgeInsets.only(left: 25,right: 25,top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:Color(0xFFebf8fd),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(list[index]["img"],),
                                  radius: 40,
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      list[index]["status"],
                                      style: TextStyle(
                                          color:Colors.greenAccent,
                                          fontSize: 12,
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    SizedBox(
                                      width: 170,
                                      child: Text(
                                        list[index]["text"],
                                        style: TextStyle(
                                            color:Color(0xFF3b3f42),
                                            fontSize: 18,
                                            decoration: TextDecoration.none
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(child: Container()),
                                Container(
                                  width: 70,
                                  height: 70,
                                  child: Text(
                                      list[index]["time"],
                                    style: TextStyle(
                                        fontSize: 10,
                                        decoration: TextDecoration.none,
                                        color:Color(0xFFb2b8bb)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                ))
          ],
        ),
      ),
    );
  }
}
