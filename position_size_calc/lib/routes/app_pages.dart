import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/bindings/home_binding.dart';
import 'package:portfolio/routes/app_routes.dart';
import 'package:portfolio/pages/desktop/home.dart' as home_desktop;
import 'package:portfolio/pages/mobile/home.dart' as home_mobile;

class AppPages {

  static bool isMobile() => 1.sw<= 560;
  static bool isDesktop() => 1.sw >= 1024;

  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: (){
        if(isMobile()){
          return const home_mobile.HomePage();
        }else if(isDesktop()){
          return const home_desktop.HomePage();
        }else{
          return const home_mobile.HomePage();
        }
      },
      binding: HomeBinding(),
    ),
  ];
}
