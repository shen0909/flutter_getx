import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondePage extends StatelessWidget {

  // final message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面二"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("这是第二个页面"),

          ],
        ),
      ),
    );
  }

}

