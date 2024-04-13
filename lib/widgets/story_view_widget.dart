import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

class StoryWiewWidget extends StatefulWidget {
  const StoryWiewWidget({Key? key}) : super(key: key);

  @override
  _StoryWiewWidgetState createState() => _StoryWiewWidgetState();
}

class _StoryWiewWidgetState extends State<StoryWiewWidget>
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
          color: Colors.white,
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
