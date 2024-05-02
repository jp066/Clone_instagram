import 'package:flutter/material.dart';
import 'package:clone_instagram/screens/messenger_screen.dart'; // Certifique-se de que esta importação está correta
import 'package:clone_instagram/widgets/direct_list.dart'; // Certifique-se de que esta importação está correta

class ListChatPage extends StatefulWidget {
  const ListChatPage({Key? key}) : super(key: key);

  @override
  _ListChatPageState createState() => _ListChatPageState();
}

class _ListChatPageState extends State<ListChatPage> {
  List<Map<String, dynamic>> chatUsers = [
    {
      "name": "jpedrooliveir4",
      "messageText": "kkkkkkkkkkkk",
      "assetImage": "assets/images/rabito.jpeg",
      "time": "10:00",
      "isMessageRead": false
    },
    {
      "name": "Queridos",
      "messageText": "Reels enviado por limax",
      "assetImage": "assets/images/meninas e eu.jpeg",
      "time": "10:05",
      "isMessageRead": false
    },
    {
      "name": "ChatBot",
      "messageText": "Abrir bate papo",
      "assetImage": "assets/icons/bot.png",
      "time": "08:00",
      "isMessageRead": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Tab(
            child: Text("grupo02",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Helvetica_Neue",
                    fontSize: 25)),
          )),
      body: ListView.builder(
        itemCount: chatUsers.length,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 10),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (chatUsers[index]["name"] == "ChatBot") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessengePage()));
              }
            },
            child: DirectList(
              name: chatUsers[index]["name"],
              messageText: chatUsers[index]["messageText"],
              assetImage: chatUsers[index]["assetImage"],
              time: chatUsers[index]["time"],
              isMessageRead: chatUsers[index]["isMessageRead"],
            ),
          );
        },
      ),
    );
  }
}
