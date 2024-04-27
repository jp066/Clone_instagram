import 'package:clone_instagram/screens/camera_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clone_instagram/screens/home_screen.dart';
import 'package:clone_instagram/screens/profile_screen.dart';
import 'package:clone_instagram/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: showAppBar(),
      body: getScreen(),
      bottomNavigationBar: bottomBarWidget(),
    );
  }

  AppBar showAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      title: const Text(
        "Instagram",
        style: TextStyle(
            fontFamily: 'FontSpring', fontSize: 26, color: Colors.white),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Image.asset(
            "assets/icons/messenger.png",
            color: Colors.white,
            width: 25,
            height: 25,
          ),
        )
      ],
    );
  }

Widget getScreen() {
    switch (index) {
      case 0:
        return const HomeScreen();

      case 1:
        return const SearchScreen();

      case 2:
        return const HomeScreen();

      case 3:
        return const ProfileScreen();
      case 4:
        return const CameraBottom();

      default:
        return Container();
    }
  }

  Widget bottomBarWidget() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                index = 0;
                setState(() {});
              },
              child: Image.asset(
                "assets/icons/home.png",
                width: 25,
                height: 25,
                color: Colors.white,
              )),
          InkWell(
              onTap: () {
                index = 1;
                setState(() {});
              },
              child: Image.asset(
                "assets/icons/search.png",
                width: 25,
                height: 25,
                color: Colors.white,
              )), //index 2
          InkWell(
              onTap: ()  {
                index = 4;
                setState(() {});
              },
              child: Image.asset(
                "assets/icons/add_post.png",
                width: 25,
                height: 25,
                color: Colors.white,
              )),
              Image.asset(
            "assets/icons/like.png",
            width: 25,
            height: 25,
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              index = 3;
              setState(() {});
            },
            child: const CircleAvatar(
                radius: 17,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                      "https://cdn.discordapp.com/attachments/1229579443857784925/1229601080300670986/grupo.jpeg?ex=6630463e&is=661dd13e&hm=fcdef14860bfa4e2311f982998706d978dc972e2eaa3095a1c46bb23fef109a8&"),
                )),
          )
        ],
      ),
    );
  }
}
