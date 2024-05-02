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
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF262626)),
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
          if (suggestedPostList[i].containsVideo)
            showWithVideoWidget(i)
          else
            showWithoutVideoWidget(i)
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.335,
                    height: MediaQuery.of(context).size.width * 0.335,
                    child: Image.network(
                      suggestedPostList[index].contentLink1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
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
                child: Image.network(
                  suggestedPostList[index].contentLink3,
                  fit: BoxFit.fill,
                ),
              )),
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
              margin: const EdgeInsets.only(right: 1, left: 1),
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
        "assets/images/camiayjp.jpeg",
        "assets/images/galaxy.jpg",
        "assets/images/jpjggui.jpeg"));

    suggestedPostList.add(SuggestedPostModel(
        true, 
        "assets/images/jpjgwm.jpeg",
        "assets/images/meninas e eu.jpeg", 
        "assets/images/rabito.jpeg"));
    suggestedPostList.add(SuggestedPostModel(
        false,
        "https://images.pexels.com/photos/442576/pexels-photo-442576.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "https://th.bing.com/th/id/R.d7e789c3b8bcb2b7880dd3b4b1d3edd6?rik=ytog4A4XipK5yA&riu=http%3a%2f%2ftechnobrains.io%2fwp-content%2fuploads%2f2021%2f07%2fflutter-Featured-Blog-Image2.jpg&ehk=qNtlUWmyUkVCjiGvmi7dbdWp32XXAQM3qbdnfOtyuBw%3d&risl=&pid=ImgRaw&r=0",
        "https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"));

    suggestedPostList.add(SuggestedPostModel(
        true,
        "https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "https://images.pexels.com/photos/2047905/pexels-photo-2047905.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "https://images.pexels.com/photos/2582937/pexels-photo-2582937.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"));
  }
}
