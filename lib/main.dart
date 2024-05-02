import 'package:flutter/material.dart';
import 'package:clone_instagram/screens/main_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  Get.testMode = true;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
      ),
      home: const MainScreen(),
    );
  }
}
