import 'package:flutter/material.dart';
import 'package:clone_instagram/widgets/direct_list.dart';

class MessengePage extends StatefulWidget {
  const MessengePage({Key? key}) : super(key: key);

  @override
  _MessengePageState createState() => _MessengePageState();
}

class _MessengePageState extends State<MessengePage> {
  TextEditingController _userInput = TextEditingController();
  List<Map<String, dynamic>> chatMessages = [];

  void addMessage(String text) {
    setState(() {
      chatMessages.add({
        "name": "Você",
        "messageText": text,
        "assetImage": "assets/images/grupo.jpg",
        "time": DateTime.now().toString(),
        "isMessageRead": false
      });
    });
    _userInput.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: 
        Text("Chatbot",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Helvetica_Neue",
                fontSize: 25)),
      )),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatMessages.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return DirectList(
                  name: chatMessages[index]["name"],
                  messageText: chatMessages[index]["messageText"],
                  assetImage: chatMessages[index]["assetImage"],
                  time: chatMessages[index]["time"],
                  isMessageRead: chatMessages[index]["isMessageRead"],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _userInput,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Digite sua mensagem...",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[850],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.white),
                  onPressed: () => addMessage(_userInput.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
