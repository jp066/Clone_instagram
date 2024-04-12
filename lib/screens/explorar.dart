import "package:flutter/material.dart";
import "package:projeto_01/SuggestedPostModel.dart";

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
      child: Column
      (children: [

    const SizedBox(
      height: 10,
    ),

    searchBarWidget(),

    const SizedBox(
      height: 10,
    ),
  
    suggestedPostWidget(),

      ],),
    );

  }

  void addData() {
   suggestedPostList.add(SuggestedPostModel(false, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fepipoca.com.br%2Fgame-of-thrones-de-onde-vieram-os-ovos-de-dragao-de-daenerys%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAY",
   "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcatracalivre.com.br%2Festilo%2Fcomo-fazer-5-penteados-inspirados-na-daenerys-targaryen%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAQ", 
   "https://www.google.com/url?sa=i&url=https%3A%2F%2Fandroidfinal.com.br%2F90359%2Fnoticias%2Fgame-of-thrones-melhores-episodios-de-daenerys-targaryen-para-se-preparar-para-house-of-the-dragon%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAg"));
  
  suggestedPostList.add(SuggestedPostModel(true, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fepipoca.com.br%2Fgame-of-thrones-de-onde-vieram-os-ovos-de-dragao-de-daenerys%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAY",
   "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcatracalivre.com.br%2Festilo%2Fcomo-fazer-5-penteados-inspirados-na-daenerys-targaryen%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAQ", 
   "https://www.google.com/url?sa=i&url=https%3A%2F%2Fandroidfinal.com.br%2F90359%2Fnoticias%2Fgame-of-thrones-melhores-episodios-de-daenerys-targaryen-para-se-preparar-para-house-of-the-dragon%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAg"));
  
  suggestedPostList.add(SuggestedPostModel(false, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fepipoca.com.br%2Fgame-of-thrones-de-onde-vieram-os-ovos-de-dragao-de-daenerys%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAY",
   "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcatracalivre.com.br%2Festilo%2Fcomo-fazer-5-penteados-inspirados-na-daenerys-targaryen%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAQ", 
   "https://www.google.com/url?sa=i&url=https%3A%2F%2Fandroidfinal.com.br%2F90359%2Fnoticias%2Fgame-of-thrones-melhores-episodios-de-daenerys-targaryen-para-se-preparar-para-house-of-the-dragon%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAg"));
  
  suggestedPostList.add(SuggestedPostModel(true, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fepipoca.com.br%2Fgame-of-thrones-de-onde-vieram-os-ovos-de-dragao-de-daenerys%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAY",
   "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcatracalivre.com.br%2Festilo%2Fcomo-fazer-5-penteados-inspirados-na-daenerys-targaryen%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAQ", 
   "https://www.google.com/url?sa=i&url=https%3A%2F%2Fandroidfinal.com.br%2F90359%2Fnoticias%2Fgame-of-thrones-melhores-episodios-de-daenerys-targaryen-para-se-preparar-para-house-of-the-dragon%2F&psig=AOvVaw1glmli7OBbh4UbtXT7IcrO&ust=1713019337150000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjah730vIUDFQAAAAAdAAAAABAg"));
  
  }
  
  Widget searchBarWidget() {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: ,
    )
  }
  
  suggestedPostWidget() {}
}
