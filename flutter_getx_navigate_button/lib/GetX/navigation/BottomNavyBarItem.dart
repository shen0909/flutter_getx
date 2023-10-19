import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavyBarItem  {
  final Widget icon;/*图标*/
  final Widget title;/*标题*/
  final Color activeColor;/*选中颜色*/
  final Color? inactiveColor;/*未选中颜色*/
  final TextAlign? textAlign;/*文字对齐*/

  BottomNavyBarItem({
    required this.icon,
    required this.title,
    this.activeColor = Colors.blue,
    this.textAlign,
    this.inactiveColor,
  });

}
