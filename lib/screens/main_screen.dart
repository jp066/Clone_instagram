import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

 @override
_MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: showAppBar(),
      body: getScreen(),
      bottomNavigationBar: bottomBarWidget(),
      
    );
  }
  
  Widget showAppBar() {}
  
  Widget getScreen() {}
  
  Widget bottomBarWidget() {}
}