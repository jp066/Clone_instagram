import 'package:flutter/material.dart';
import 'package:clone_instagram/utils/text_utils.dart';

class PostViewWidget extends StatefulWidget {
  const PostViewWidget({Key? key}) : super(key: key);

  @override
  _PostViewWidgetState createState() => _PostViewWidgetState();
}

class _PostViewWidgetState extends State<PostViewWidget> {

  final TextUtils _textUtils = TextUtils();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://cdn.discordapp.com/attachments/1229579443857784925/1229601080300670986/grupo.jpeg?ex=6630463e&is=661dd13e&hm=fcdef14860bfa4e2311f982998706d978dc972e2eaa3095a1c46bb23fef109a8&"
                      ),
                    ),
                    const SizedBox(width: 10,),
                    _textUtils.bold16("grupo02", Colors.white)
                  ],
                ),
                const Icon(Icons.more_vert_rounded,color: Colors.white,)
              ],
            ),
          ),
          Image.asset("assets/images/grupo.jpeg",height: 300,fit: BoxFit.fill,),

          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/icons/like.png",color: Colors.white,width: 25,height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Image.asset("assets/icons/comment.png",color: Colors.white,width: 25,height: 25,),
                    ),
                    Image.asset("assets/icons/share.png",color: Colors.white,width: 25,height: 25,),
                  ],
                ),
                Image.asset("assets/icons/save.png",color: Colors.white,width: 25,height: 25,),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _textUtils.bold14("3,985 vizualizações", Colors.white),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    _textUtils.bold14("grupo02", Colors.white),
                    const SizedBox(width: 5,),
                    _textUtils.normal14("noiss porra", Colors.white)
                  ],
                ),

                const SizedBox(height: 5,),
                _textUtils.normal14("Veja os comentarios", Colors.grey),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    _textUtils.normal11("12 minutos atrás", Colors.grey),
                    const SizedBox(width: 5,),
                    _textUtils.normal11("Traduzir", Colors.white),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}