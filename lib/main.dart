import 'package:flutter/material.dart';
import 'package:clone_instagram/screens/main_screen.dart';
/*import 'package:clone_instagram/screens/search_screen.dart';
import 'package:clone_instagram/screens/profile_screen.dart';
import 'package:clone_instagram/screens/SuggestedPostModel.dart';
import 'package:clone_instagram/screens/explorar.dart';
import 'package:clone_instagram/widgets/story_view_widget.dart';*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
      ),
      home: const MainScreen(),
    );
  }
}
