import 'package:file_structure/core/theme/light_theme.dart';
import 'package:file_structure/feuture/splash/screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        initialRoute: '/',
        theme: lightThemeData(),
        debugShowCheckedModeBanner: false,
        locale: Locale('en'),
        fallbackLocale: Locale('en'),
        // home: FutureBuilder(
        //     future: Authservice().getCurrentUser(),
        //     builder: (context, AsyncSnapshot<dynamic> snapshot) {
        //       if (snapshot.hasData) {
        //         // return MusaHome();
        //         return CustomBottomnavMusa();
        //         // return  OnboardingOne();
        //       } else {
        //         //  return OnboardingOne();
        //         // return MusaHome();
        //         return CustomBottomnavMusa();
        //       }
        //     }),
        home: SplashScreen(),
        // home: CustomBottomnavMusa(),
        // home: OnboardingOne(),
      );
    });
  }
}
