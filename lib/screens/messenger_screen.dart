import 'package:flutter/cupertino.dart';
import 'package:clone_instagram/widgets/message.dart';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';


class MessengePage extends StatefulWidget {
  const MessengePage({super.key});

  @override
  State<MessengePage> createState() => _MessengePageState();
}

class _MessengePageState extends State<MessengePage> {
  TextEditingController _userInput =TextEditingController();

  static const apiKey = "AIzaSyBI38lhhyhX5mr-6Bd7lKU2jdKhQ4hvsP4";

  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);

  final List<Message> _messages = [];

  Future<void> sendMessage() async{
    final message = _userInput.text;

    setState(() {
      _messages.add(Message(isUser: true, message: message, date: DateTime.now()));
    });

    final content = [Content.text(message)];
    final response = await model.generateContent(content);


    setState(() {
      _messages.add(Message(isUser: false, message: response.text?? "", date: DateTime.now()));
    });

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
<<<<<<< HEAD
            image: NetworkImage('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEigDbiBM6I5Fx1Jbz-hj_mqL_KtAPlv9UsQwpthZIfFLjL-hvCmst09I-RbQsbVt5Z0QzYI_Xj1l8vkS8JrP6eUlgK89GJzbb_P-BwLhVP13PalBm8ga1hbW5pVx8bswNWCjqZj2XxTFvwQ__u4ytDKvfFi5I2W9MDtH3wFXxww19EVYkN8IzIDJLh_aw/s1920/space-soldier-ai-wallpaper-4k.webp'),
=======
            image: NetworkImage('https://img.freepik.com/vetores-gratis/fundo-sem-emenda-do-teste-padrao-do-damasco-do-vetor-ornamento-classico-de-damasco-de-luxo-classico-textura-sem-igual-victoriana-para-papeis-de-parede-texteis-embrulho-molde-barroco-floral-requintado_1217-738.jpg?t=st=1714647099~exp=1714650699~hmac=b590552c22a578d656b7ee54f92ad1b6cdb5532ad19618a667fda27b6cc7ccc9&w=740'),
>>>>>>> 9caab60a59242dbd55e1ab83567c483a1abb4c1e
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: ListView.builder(itemCount:_messages.length,itemBuilder: (context,index){
                  final message = _messages[index];
                  return Messages(isUser: message.isUser, message: message.message, date: DateFormat('HH:mm').format(message.date));
                })
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 15,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: _userInput,
<<<<<<< HEAD
=======
                      
>>>>>>> 9caab60a59242dbd55e1ab83567c483a1abb4c1e
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
<<<<<<< HEAD
                        label: Text('Enter Your Message')
=======
                        label: Text('Digite sua mensagem')
>>>>>>> 9caab60a59242dbd55e1ab83567c483a1abb4c1e
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    padding: EdgeInsets.all(12),
                      iconSize: 30,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(CircleBorder())
                      ),
                      onPressed: (){
                      sendMessage();
                      },
                      icon: Icon(Icons.send))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}