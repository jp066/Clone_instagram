import 'package:flutter/material.dart';
import 'package:clone_instagram/utils/text_utils.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class Like {
  final String userId;
  final String userName;
  final String assetImage;

  Like({required this.userId, required this.userName, required this.assetImage});
}

class _NotificationsPageState extends State<NotificationsPage> {
  final TextUtils _textUtils = TextUtils();
  List<Like> likes = []; // Lista de curtidas

  @override
  void initState() {
    super.initState();
    // Simulando a obtenção de curtidas
    _fetchLikes();
  }

  void _fetchLikes() {
    // Simulação de obtenção de curtidas
    setState(() {
      likes = [
        Like(userId: '1', userName: 'Rabito', assetImage: 'assets/images/rabito.jpeg'),
        // Adicione mais curtidas conforme necessário 
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Cor de fundo do AppBar definida para preto
        title: _textUtils.bold20("Recente", Colors.white),
      ),
      body: Container(
        color: Colors.black, // Cor de fundo do Container definida para preto
        child: Container(
          margin: EdgeInsets.all(10), // Adiciona uma margem ao redor da lista de curtidas
          child: ListView.builder(
            itemCount: likes.length,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: EdgeInsets.zero, // Remove padding interno
                minLeadingWidth: 5, // Reduz o espaço entre leading e título
                leading: ClipOval(
                  child: Image.asset(likes[index].assetImage, width: 50, height: 50, fit: BoxFit.cover),
                ),
                title: Row(
                  children: [
                    Expanded(
                      child: Text(likes[index].userName, style: TextStyle(color: Colors.white)), // Altere a cor do texto para branco
                    ),
                    SizedBox(width: 5), // Ajuste o espaço entre o nome do usuário e o subtítulo
                    Padding(
                      padding: EdgeInsets.only(right: 1, bottom: 0), // Ajusta o padding para mover a imagem 10 pixels mais abaixo
                      child: ClipRect(
                        child: Image.asset('assets/images/grupo.jpeg', width: 50, height: 50, fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
                subtitle: Text('curtiu sua foto. 3d', style: TextStyle(color: Colors.white)), // Altere a cor do subtítulo para branco
              );
            },
          ),
        ),
      ),
    );
  }
}
