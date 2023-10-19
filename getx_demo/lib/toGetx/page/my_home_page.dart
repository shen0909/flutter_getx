import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'content/content_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF69c5df),
      /*stack是固定定位，用Positoned来包裹，在里面可以设置：left、right、top、bottom,确定具体位置
       *Positioned是往后逐层浮现的，越后越上面 */
      body:Stack(
        children: [
          Positioned(
              left: 0,
              height: 700,
              child: Container(
                height: 700,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/background.jpg"),
                      fit:BoxFit.cover
                  )
                ),
              )),
          Positioned(
              bottom: 0,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pick Your Favourite",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                    ),),
                  Text(
                    "Contests",
                    style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.w600
                    ),),
                  SizedBox(height: 40,),
                  Container(
                    width: MediaQuery.of(context).size.width-25,
                      child: Text(
                        "We make great design work " "happen with our great community designer",
                        style: TextStyle(color: Colors.white60),
                      )
                  ),
                  SizedBox(height: 40,),
                  Container(
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      onPressed: ()=>Get.to(()=>ContentPage()),
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Color(0xFFfbc33e),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)
                          )
                      ),
                      child: Text(
                        "Get started",
                        style: TextStyle(color:Colors.white),
                      ),
                    )
                  ),
                  SizedBox(height: 70,)
                ],
              )
          ),
        ],
      ),
    );
  }
}
