import 'package:flutter/material.dart';
import 'package:clone_instagram/widgets/story_view_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 20; i++)
                  Container(
                    width: 70,
                    margin: const EdgeInsets.only(right: 15),
                    child: Column(
                      children: const [StoryWiewWidget()],
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
