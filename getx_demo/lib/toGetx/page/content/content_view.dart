import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'content_logic.dart';

class ContentPage extends StatelessWidget {

  final logic = Get.put(ContentLogic());
  final state = Get.find<ContentLogic>().state;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    logic.readDate(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc5e5f3),
        elevation: 0,
      ),
      body: Container(
        // padding: EdgeInsets.only(top:70),
        color: Color(0xFFc5e5f3),
        child: Column(
          children: [
            Container(
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
                              color: Color(0xFF3b3f42),
                              fontSize: 18,
                              decoration: TextDecoration.none
                          ),
                        ),
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
                      height: 70,
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
                        color: Color(0xFF1f2326),
                        fontSize: 20,
                        decoration: TextDecoration.none
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "Show all",
                    style: TextStyle(
                        color: Color(0xFFcfd5b3),
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
                      onTap: () => null,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            GetBuilder<ContentLogic>(builder: (logic) {
              return Container(
                height: 220,
                child: PageView.builder(
                    controller: PageController(viewportFraction: 0.88),
                    itemCount: state.info.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                       /* onTap: () => Get.toNamed("\detail", arguments: {'infoitem': state.info[index],
                                  *//*'title':info[index]["title"].toString(),
                        'name':info[index]["name"].toString(),
                        'prize':info[index]["prize"].toString(),
                        'text':info[index]["text"].toString(),
                        'img':info[index]["img"].toString(),*//*
                                }),*/
                        onTap: () {
                          print("要跳转到detail页面了");
                          logic.toPage(state.info[index]);
                        },
                        child: Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width - 20,
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc)
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    state.info[index]["title"],
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: width,
                                child: Text(
                                  state.info[index]["text"],
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFFb8eefc)
                                  ),
                                ),
                              ),
                              Divider(thickness: 1.0,),
                              Row(
                                children: [
                                  for(int i = 0; i < state.info.length; i++)
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              25),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  state.info[i]["img"]
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
              );
            }),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: [
                  Text(
                    "Recent Contests",
                    style: TextStyle(
                        color: Color(0xFF1f2326),
                        fontSize: 20,
                        decoration: TextDecoration.none
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "Show all",
                    style: TextStyle(
                        color: Color(0xFFcfd5b3),
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
            GetBuilder<ContentLogic>(builder: (logic) {
              return Expanded(
                  child: ListView.builder(
                      itemCount: state.list.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {
                            print("要跳转到detail页面了");
                            logic.toPage(state.info[index]);
                          },
                          // onTap: () => Get.to(null),
                          child: Container(
                            width: width,
                            height: 100,
                            margin: EdgeInsets.only(
                                left: 25, right: 25, top: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFebf8fd),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      state.list[index]["img"],),
                                    radius: 40,
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text(
                                        state.list[index]["status"],
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontSize: 12,
                                            decoration: TextDecoration.none
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      SizedBox(
                                        width: 170,
                                        child: Text(
                                          state.list[index]["text"],
                                          style: TextStyle(
                                              color: Color(0xFF3b3f42),
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
                                      state.list[index]["time"],
                                      style: TextStyle(
                                          fontSize: 10,
                                          decoration: TextDecoration.none,
                                          color: Color(0xFFb2b8bb)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  ));
            })
          ],
        ),
      ),
    );
  }
}
