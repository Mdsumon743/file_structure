import 'package:file_structure/feuture/auth/controller/login_controller.dart';
import 'package:file_structure/feuture/auth/screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final LoginController loginController = Get.put(LoginController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(5.w),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.w,),
            Container(
              width: 100.w,
              height: 50.h,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(
                  'assets/images/logo_3.png'
                ), fit: BoxFit.fill)
              ),
            ),
            SizedBox(height: 5.w,),
            // Obx(() => _buildAnimatedTextField('Email', emailController, loginController.isEmailFocused, (focus) => loginController.isEmailFocused.value = focus ),)
            _buildAnimatedTextField('Email', emailController, loginController.isEmailFocused, (focus) => loginController.isEmailFocused.value = focus ),
            SizedBox(height: 3.w,),
            _buildAnimatedTextField('password', passwordController, loginController.isPasswordFocused, (focus) => loginController.isPasswordFocused.value = focus ),
            SizedBox(height: 2.w,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(onTap:  () {
                    print('pressed');
                    Get.to(() => SignupScreen());
                  }, child: SizedBox(width: 40.w, child: _buildButton('Create Account'))),
                   SizedBox(width: 3.w,),
                  SizedBox(width: 40.w, child: _buildButton('Sign in'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedTextField(
    String hintText,
    TextEditingController controller,
    RxBool isFocused,
    Function(bool) onFocusChange,
  ) {
    return Focus(
      onFocusChange: onFocusChange,
      child: Obx(() => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isFocused.value ? 280 : 220,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.black),
              enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Colors.transparent), // Default border color
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.5), // Border color when focused
          ),
              ),
              style: GoogleFonts.montserratAlternates(            
              ),
              textAlign: TextAlign.center,
            ),
          )),
    );
    
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyan,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      ),
      onPressed: () {
        Get.to(() => SignupScreen());
      },
      child: Text(
        text,
        style: GoogleFonts.montserratAlternates(
          color: Colors.black, fontSize: 3.4.w
        ),
      ),
    );
  }
}