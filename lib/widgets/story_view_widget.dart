import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

class StoryViewWidget extends StatefulWidget {
  const StoryViewWidget({Key? key}) : super(key: key);

  @override
  _StoryViewWidgetState createState() => _StoryViewWidgetState();
}

class _StoryViewWidgetState extends State<StoryViewWidget>
    with TickerProviderStateMixin {
  late Animation gap;
  late Animation<double> base;
  late Animation<double> reverse;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: const Duration(seconds: 4));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 0.0, end: 3.0).animate(base)..addListener(() {
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.forward();
      },
      child: Container(
      margin: const EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: RotationTransition(
        turns: base,
        child: DashedCircle(
          gapSize: gap.value,
          dashes: 40,
          color: const Color(0XFFED4634),
          child: RotationTransition(
            turns: reverse,
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.XYL5XjhGkPMq0UPMo6O0agHaFP?rs=1&pid=ImgDetMain"),
              ),
            ),
          ),
        ),
      ),
    ),);
  }
}
