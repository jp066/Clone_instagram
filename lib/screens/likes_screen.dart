import 'package:flutter/material.dart';
import 'package:clone_instagram/utils/text_utils.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

  final TextUtils _textUtils = TextUtils();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: _textUtils.bold20("Likes Screen", Colors.white),
      ),
    );
  }
}