import 'package:flutter/material.dart';

class DirectList extends StatefulWidget {
  final String name;
  final String messageText;
  final String assetImage;
  final String time;
  final bool isMessageRead;

   DirectList({
    required this.name,
    required this.messageText,
    required this.assetImage,
    required this.time,
    required this.isMessageRead,
  });

  @override
  _DirectListState createState() => _DirectListState();
}

class _DirectListState extends State<DirectList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.assetImage),
                    maxRadius: 15,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.name, style: const TextStyle(color: Colors.white ,fontSize: 16)),
                          const SizedBox(height: 6),
                          Text(widget.messageText, style: TextStyle(fontFamily: "Helvetica_Neue",fontSize: 13, color: Colors.white, fontWeight: widget.isMessageRead? FontWeight.bold : FontWeight.normal)),                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
