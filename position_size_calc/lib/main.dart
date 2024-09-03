import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/routes/app_pages.dart';
import 'package:portfolio/routes/app_routes.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1440, 900),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child){
          return GetMaterialApp(
            title: 'Position Size Calculator',
            defaultTransition: Transition.native,
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.HOME,
            getPages: AppPages.pages,
            theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
          );
        }
    );
  }
}