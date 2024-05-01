import 'package:flutter/material.dart';
import 'package:clone_instagram/widgets/conversation_list.dart'; // Importe o widget de conversa individual

class MessengePage extends StatefulWidget {
  const MessengePage({super.key});

  @override
  _MessengePageState createState() => _MessengePageState();
}

class _MessengePageState extends State<MessengePage> {
  List<Map<String, dynamic>> chatUsers = [
    // Exemplo de dados de usuários de chat
    {"name": "jpedrooliveir4", "messageText": "kkkkkkkkkkkk", "assetImage": "assets/images/rabito.jpeg", "time": "10:00", "isMessageRead": false},
    {"name": "Queridos", "messageText": "Reels enviado por limax", "assetImage": "assets/images/meninas e eu.jpeg", "time": "10:05", "isMessageRead": false},
    // Adicione mais usuários conforme necessário
  ];

  @override
Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("grupo02", style: TextStyle(color: Colors.white, fontFamily: "Helvetica_Neue", fontSize: 25)),
      ),
      body: ListView.builder(
        itemCount: chatUsers.length,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 10),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ConversationList(
            name: chatUsers[index]["name"],
            messageText: chatUsers[index]["messageText"],
            assetImage: chatUsers[index]["assetImage"],
            time: chatUsers[index]["time"],
            isMessageRead: chatUsers[index]["isMessageRead"],
          );
        },
      ),
    );
  }}