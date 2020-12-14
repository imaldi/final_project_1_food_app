import 'package:http/http.dart' as http;

import 'package:final_project_1_food_app/models/recipe_list_by_type_response.dart';
import 'dart:convert';

import '../secret.dart';

class Food{
  List<FoodSimple> foodList  = [];

  Future<void> getFoodListByType(String foodType) async{

    // String url = "http://newsapi.org/v2/top-headlines?country=id&category=health&excludeDomains=stackoverflow.com&sortBy=publishedAt&apiKey=${apiKey}";
    String url = "https://api.spoonacular.com/recipes/complexSearch?type=$foodType&number=20&apiKey=${apiKey}";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['results'] != null){
      jsonData["results"].forEach((element){

        if(element['image'] != null){
          // Article article = Article(
          //   title: element['title'],
          //   author: element['author'],
          //   description: element['description'],
          //   urlToImage: element['urlToImage'],
          //   publshedAt: DateTime.parse(element['publishedAt']),
          //   content: element["content"],
          //   articleUrl: element["url"],
          // );
          FoodSimple foodSimple = FoodSimple(
            id: jsonData['id'],
            title: jsonData['title'],
            image: jsonData['image'],
            imageType: jsonData['imageType']
          );
          foodList.add(foodSimple);
        }

      });
    }


  }

}