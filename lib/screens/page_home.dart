import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project_1_food_app/helper/food_type_list.dart';
import 'package:flutter/material.dart';
// import 'package:news_app_api/helper/data.dart';
// import 'package:news_app_api/helper/widgets.dart';
// import 'package:news_app_api/models/categorie_model.dart';
// import 'package:news_app_api/views/categorie_news.dart';
// import 'package:task7_aplikasi_kesehatan/helper/widgets.dart';
import 'package:final_project_1_food_app/helper/widgets.dart';
// import 'package:task7_aplikasi_kesehatan/models/categorie_model.dart';
// import '../helper/news.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _loading = false;
  // var newslist;
  var foodTypeState = "MainCourse";

  // List<CategoryModel> categories = List<CategoryModel>();

  void getNews() async {
    // News news = News();
    // await news.getNews();
    // newslist = news.news;
    // setState(() {
    //   _loading = false;
    // });
  }

  Widget flatButtonBuilder(String foodType){
    return Padding(
      padding: EdgeInsets.only(right: 5,left: 5),
      child: FlatButton(
        onPressed: (){
          setState(() {
            foodTypeState= foodType;
          });
        },
        color: Colors.lightBlue,
        child: Text('$foodType')
    ),
    );
  }

  @override
  void initState() {
    _loading = false;
    super.initState();
    //
    // categories = getCategories();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: _loading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : Stack(
          children: [
            Container(
              height:30,
              child: ListView.builder(
              itemCount: foodTypes.length,
              shrinkWrap: true,
              // physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return flatButtonBuilder(foodTypes[index]);
              }
            ),),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child:
                          Center(child: Text('$foodTypeState'),),
                        // ListView.builder(
                        //     itemCount: newslist.length,
                        //     shrinkWrap: true,
                        //     physics: ClampingScrollPhysics(),
                        //     itemBuilder: (context, index) {
                        //       return Text("kosong");
                        //       // return NewsTile(
                        //       //   imgUrl: newslist[index].urlToImage ?? "",
                        //       //   title: newslist[index].title ?? "",
                        //       //   desc: newslist[index].description ?? "",
                        //       //   content: newslist[index].content ?? "",
                        //       //   posturl: newslist[index].articleUrl ?? "",
                        //       // );
                        //     }),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ),
      drawer: MyNavigationDrawer(context),
    );
  }
}
