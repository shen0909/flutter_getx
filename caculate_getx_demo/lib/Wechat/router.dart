import 'package:caculate_getx_demo/Wechat/splash_page/view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class WeRouter{
  static const String splash='/';

  static final List<GetPage> routers=[
    GetPage(name: splash, page: ()=>SplashPagePage())
  ];

}