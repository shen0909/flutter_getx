import 'package:get/get_navigation/src/routes/get_route.dart';
import '../page/content/content_view.dart';
import '../page/my_detail/my_detail_view.dart';
import '../page/my_home_page.dart';


class RouterName{
  static const String main="/";
  static const String content="/content";
  static const String detail="/detail";

  static final List<GetPage> getpage=[
    GetPage(name: main, page: ()=>MyHomePage()),
    GetPage(name: content, page: ()=>ContentPage()),
    GetPage(name: detail, page: ()=>MyDetailPage()),
  ];

}