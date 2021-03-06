import 'package:final_project_1_food_app/models/food.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:news_app_api/views/article_view.dart';
// import 'package:task7_aplikasi_kesehatan/views/article_view.dart';
// import 'package:task7_aplikasi_kesehatan/views/page_dictionary.dart';
// import 'package:task7_aplikasi_kesehatan/views/page_login.dart';
import 'package:final_project_1_food_app/screens/page_login.dart';
import 'package:final_project_1_food_app/screens/page_profile.dart';
// import 'package:task7_aplikasi_kesehatan/views/page_profile.dart';
// import 'package:task7_aplikasi_kesehatan/views/word_detail_view.dart';

Widget MyAppBar(){
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Health ",
          style:
          TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        Text(
          "News",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
        )
      ],
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

Widget MyNavigationDrawer(BuildContext context){
  return Drawer(
    child: ListView(children: <Widget>[
      ListTile(title: Text('Selamat Datang'),),
      Divider(),
      ListTile(
        title: Text('Beranda'),
        trailing: Icon(Icons.home),
        onTap: (){},
      ),
      ListTile(
        title: Text('Kamus'),
        trailing: Icon(Icons.book),
        onTap: (){
          Navigator.of(context).pop();
          // Navigator.of(context).pushNamed('/kamus');
          // Navigator.push(context, MaterialPageRoute (
          //     // builder: (context) => KamusKesehatan()
          // )
          // );
        },
      ),
      ListTile(
        title: Text('Profil'),
        trailing: Icon(Icons.person),
        onTap: (){
          Navigator.push(context, MaterialPageRoute (
              builder: (context) => ProfilePage()
            )
          );
        },
      ),
      ListTile(
        title: Text('Log Out'),
        trailing: Icon(Icons.directions_run),
        onTap: () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          await preferences.clear();
          Navigator.push(context, MaterialPageRoute (
              builder: (context) => PageLogin()
          )
          );
        },
      ),
    ],),
  );
}


class FoodTile extends StatelessWidget {
  final int id;
  final String title, image, imageType;
  FoodTile({this.id,this.title,this.image,this.imageType});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(
        //     builder: (context) => ArticleView(
        //       postUrl: posturl,
        //     )
        // ));
      },
      child: Container(
          margin: EdgeInsets.only(bottom: 24),
          width: MediaQuery.of(context).size.width,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(6),bottomLeft:  Radius.circular(6))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        image,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(height: 12,),
                  Text(
                    title,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  // Text(
                  //   desc,
                  //   maxLines: 2,
                  //   style: TextStyle(color: Colors.black54, fontSize: 14),
                  // )
                ],
              ),
            ),
          ),
    );
  }
}

// class FoodTile extends StatelessWidget {
//   final int id;
//   final String title, image, imageType;
//   FoodTile({this.id,this.title,this.image,this.imageType});
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         // Navigator.push(context, MaterialPageRoute(
//         //     builder: (context) => WordDetailView(
//         //         kata : kata,
//         //         arti_kata: arti_kata
//         //       // postUrl: posturl,
//         //     )
//         // ));
//       },
//       child: Container(
//         margin: EdgeInsets.only(bottom: 24),
//         width: MediaQuery.of(context).size.width,
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           alignment: Alignment.bottomCenter,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(bottomRight: Radius.circular(6),bottomLeft:  Radius.circular(6))
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//
//               Text(
//                 kata,
//                 maxLines: 2,
//                 style: TextStyle(
//                     color: Colors.black87,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               // Text(
//               //   desc,
//               //   maxLines: 2,
//               //   style: TextStyle(color: Colors.black54, fontSize: 14),
//               // )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

