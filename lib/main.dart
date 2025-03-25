import 'package:file_structure/app.dart';
import 'package:file_structure/feuture/auth/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

void main (){
  Get.put(LoginController());
  runApp(const App());
}