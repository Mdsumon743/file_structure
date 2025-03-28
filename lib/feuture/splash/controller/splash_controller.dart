import 'package:file_structure/feuture/auth/screen/login_screen.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';


class SplashController extends GetxController {
  void navigateToHomeScreen() {
    Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        Get.offAll(
          () => LoginScreen(),
          transition: Transition.fade,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    navigateToHomeScreen();
  }
}
