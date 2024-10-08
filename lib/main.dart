import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_library/bindings/app_bindings.dart';
import 'package:music_library/pages/home_page.dart';
import 'package:music_library/login_page_folder/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()), 
        GetPage(
          name: '/homepage', 
          page: () => HomePage(), 
          bindings: [AppBindings()],
        ), 
      ],
    );
  }
}
