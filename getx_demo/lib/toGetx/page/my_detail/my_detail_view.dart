import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_detail_logic.dart';

class MyDetailPage extends StatelessWidget {
  // Get.lazyPut<MyDetailLogic>(() => MyDetailLogic(), tag: "myDetail");
  final MyDetailLogic logic = Get.put(MyDetailLogic());
  // final  state = Get.find<MyDetailLogic>(tag: "myDetail").state;

  @override
  Widget build(BuildContext context) {

    /*Get.find<MyDetailLogic>().state获取的是MyDetailLogic的状态对象
     *放到build里面每次build方法被调用的时候，都会重新获取到最新的状态
     *在外面获取到的一直都是初始状态*/
    final state=Get.find<MyDetailLogic>().state;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    logic.readDate(context);

    final info = state.info;
    print("myDetail页面的数据state.info:${info}");
    print("myDetail页面的数据state.info:${state.info.values}");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc5e5f3),
        elevation: 0,
      ),
      body: Container(
          color: Color(0xFFc5e5f3),
          child: GetBuilder<MyDetailLogic>(
              builder: (logic) {
                return Stack(
                  children: [
                    Positioned(
                        top: 30,
                        left: 0,
                        height: 100,
                        width: width,
                        child: Container(
                          width: width,
                          height: 100,
                          margin: const EdgeInsets.only(left: 25, right: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFebf8fd),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                  info["img"]
                              ),
                            ),
                                SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      info["name"],
                                      style: TextStyle(
                                          color: Color(0xFF3b3f42),
                                          fontSize: 18,
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      "Top Level",
                                      style: TextStyle(
                                          color: Color(0xFFfdebb2),
                                          fontSize: 12,
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Container(
                                  width: 70,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFFf3fafc)
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.notifications,
                                      color: Color(0xFF69c5df),
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                      top: 270,
                      left: 0,
                      width: width,
                      height: height,
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Color(0xFFf9fbfc),
                      ),
                    ),
                    Positioned(
                        top: 190,
                        left: 0,
                        width: width,
                        child: Container(
                          margin: const EdgeInsets.only(left: 25, right: 25),
                          width: width,
                          height: 260,
                          decoration: BoxDecoration(
                              color: Color(0xFFfcfffe),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20,
                                    spreadRadius: 1,
                                    offset: Offset(0, 10),
                                    color: Colors.grey.withOpacity(0.2)
                                )
                              ]
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      info['title'],
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: width,
                                  child: Text(
                                    info['text'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFFb8b8b8)
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Divider(thickness: 1.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                        Icons.watch_later,
                                        color: Color(0xFF69c5df)),
                                    SizedBox(width: 5,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Text(
                                        info['name'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF303030),
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                      Text(
                                        "Deadline",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFacacac)
                                        ),)
                                      ],),
                                    Spacer(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.monetization_on, color: Color(0xFFfb8483)),
                                        SizedBox(width: 5,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              info['prize'],
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFF303030),
                                                  fontWeight: FontWeight.w700
                                              ),
                                            ),
                                            Text(
                                              "Prize",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFFacacac)
                                              ),
                                            )
                                          ],
                                        )
                                      ],),
                                    Spacer(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.star, color: Color(0xFFfbc33e)),
                                        SizedBox(width: 5,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Top Level",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFF303030),
                                                  fontWeight: FontWeight.w700
                                              ),
                                            ),
                                            Text(
                                              "Entry",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFFacacac)
                                              ),)
                                          ],)
                                      ],),
                                  ],
                                )],
                            ),
                          ),
                        )
                    ),
                    Positioned(
                        top: 480,
                        left: 25,
                        height: 50,
                        child: Container(
                          child: RichText(
                            text: TextSpan(
                                text: "Total Participants ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.black
                                ),
                                children: [
                                  TextSpan(
                                    text: "(11)",
                                    style: TextStyle(color: Color(0xFFfbc33e)
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        )),
                    Stack(
                      children: [for(int i = 0; i < state.img.length; i++)
                        Positioned(
                          top: 530,
                          left: (20 + i * 35).toDouble(),
                          width: 50,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage(
                                        state.img[i]['img']
                                    ),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),)
                      ],
                    ),
                    Positioned(
                        top: 600,
                        left: 20,
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0x79fb3e80)
                                  ),
                                  child: Icon(Icons.favorite_border, color: Colors.white)
                              ),
                              SizedBox(width: 10,),
                              Text(
                                "Add to favorite",
                                style: TextStyle(
                                    color: Color(0xFFfbc33e),
                                    fontSize: 18
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                );
              })
      ),
    );
  }
}
