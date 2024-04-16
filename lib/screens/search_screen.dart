import 'package:flutter/material.dart';
import 'package:clone_instagram/dummy_data/suggested_posts_model.dart';
import 'package:clone_instagram/utils/text_utils.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextUtils _textUtils = TextUtils();

  List<SuggestedPostModel> suggestedPostList = [];

  @override
  void initState() {
    super.initState();

    addData();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          searchBarWidget(),
          const SizedBox(
            height: 10,
          ),
          suggestedPostsWidget()
        ],
      ),
    );
  }

  Widget searchBarWidget() {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFF262626)),
      child: Row(
        children: [
          const Expanded(
            child: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            flex: 1,
          ),
          Expanded(
            child: _textUtils.normal16("Pesquisar", const Color(0xFF3E3E3E)),
            flex: 6,
          )
        ],
      ),
    );
  }

  Widget suggestedPostsWidget() {
    return Column(
      children: [
        for (int i = 0; i < suggestedPostList.length; i++)
          if (suggestedPostList[i].containsVideo) showWithVideoWidget(i) else showWithoutVideoWidget(i)
      ],
    );
  }

  Widget showWithVideoWidget(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Expanded(
            flex: 1,
              child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.335,
                height: MediaQuery.of(context).size.width * 0.335,
                child: Image.network(
                  suggestedPostList[index].contentLink1,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.335,
                height: MediaQuery.of(context).size.width * 0.335,
                child: Image.network(
                  suggestedPostList[index].contentLink2,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          )),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(left: 2),
              height: MediaQuery.of(context).size.width * 0.67,
              child:Image.network(
                suggestedPostList[index].contentLink3,
                fit: BoxFit.fill,
              ),
            )
          ),
        ],
      ),
    );
  }

  Widget showWithoutVideoWidget(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 1),
              height: MediaQuery.of(context).size.width * 0.33,
              child: Image.network(
                suggestedPostList[index].contentLink1,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 1,left: 1),
              height: MediaQuery.of(context).size.width * 0.33,
              child: Image.network(
                suggestedPostList[index].contentLink2,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 1),
              height: MediaQuery.of(context).size.width * 0.33,
              child: Image.network(
                suggestedPostList[index].contentLink3,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void addData() {
    suggestedPostList.add(SuggestedPostModel(
        false,
        "https://cdn.discordapp.com/attachments/1229579443857784925/1229598426912784414/WhatsApp_Image_2024-04-15_at_21.27.54.jpeg?ex=663043c5&is=661dcec5&hm=f6f59f97ac28e2cd44489eb1a2641dab37b209d06cdd0d0fd843c568da250b0c&",
        "https://cdn.discordapp.com/attachments/1229579443857784925/1229592030829740112/nostres.jpeg?ex=66303dd0&is=661dc8d0&hm=cadb3d72e57f4186d99c67a289f08a1d4ab17c5e6ac783a489282b4df1470d62&",
        "https://cdn.discordapp.com/attachments/1229579443857784925/1229592031408422944/nostres2.jpeg?ex=66303dd1&is=661dc8d1&hm=58bfc837695d4accd784a284c7c87f170dfb41d7f45fb272773b970f24fca794&"));

    suggestedPostList.add(SuggestedPostModel(
        true,
        "https://th.bing.com/th/id/OIF.6nXFid4OvRbpcvWqgrQflA?rs=1&pid=ImgDetMain",
        "https://th.bing.com/th/id/R.d7e789c3b8bcb2b7880dd3b4b1d3edd6?rik=ytog4A4XipK5yA&riu=http%3a%2f%2ftechnobrains.io%2fwp-content%2fuploads%2f2021%2f07%2fflutter-Featured-Blog-Image2.jpg&ehk=qNtlUWmyUkVCjiGvmi7dbdWp32XXAQM3qbdnfOtyuBw%3d&risl=&pid=ImgRaw&r=0",
        "https://cdn.discordapp.com/attachments/1229579443857784925/1229579514246594560/WhatsApp_Image_2024-04-15_at_20.47.47.jpeg?ex=66303228&is=661dbd28&hm=47d51228181f2ff9f06ae5d5e0dc72a5ab274cb9201c24d6605e39aa77a5fb3f&"));

    suggestedPostList.add(SuggestedPostModel(
        false,
        "https://th.bing.com/th/id/R.3c262f75e0f3c1f0ddd8cb376102510e?rik=YDHoEGj8ADK1ug&pid=ImgRaw&r=0",
        "https://cdn.discordapp.com/attachments/1229579443857784925/1229597846307737620/WhatsApp_Image_2024-04-15_at_22.01.56.jpeg?ex=6630433b&is=661dce3b&hm=ec77cb17237bc927c7cc390a7bbd215556eecaaba4fcaf5622097008bca0b37c&",
        "https://cdn.discordapp.com/attachments/1229565848256249868/1229578685120643153/WhatsApp_Image_2024-04-15_at_20.46.21.jpeg?ex=66303163&is=661dbc63&hm=b03651821ea0d6ad699d465cd242828ce2ae2388ad5b38baa0316606acc762e4&"));

    suggestedPostList.add(SuggestedPostModel(
        true,
        "https://cdn.discordapp.com/attachments/1229579443857784925/1229599303811465306/ee779231-976c-4395-851c-d8ef08245ee9.jpg?ex=66304496&is=661dcf96&hm=98518813384ae693adfdd61e2b300f1f04e3b94e877a64a30e3fd23553a0adec&",
        "https://cdn.discordapp.com/attachments/1229579443857784925/1229599519671324712/WhatsApp_Image_2024-04-15_at_22.07.35.jpeg?ex=663044ca&is=661dcfca&hm=1294e9dbf764706446af9eccf915d0889cfae3513349ef0f0b0bddb9e6cfd522&",
        "https://cdn.discordapp.com/attachments/1229565848256249868/1229577819810697287/WhatsApp_Image_2024-04-15_at_20.39.26.jpeg?ex=66303094&is=661dbb94&hm=354f069295246588d80ad2a4c126f62695eed8764f654b8a820e3498b5277f41&"));
 }
}