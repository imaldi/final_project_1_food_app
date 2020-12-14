class RecipeListByTypeResponse {
  RecipeListByTypeResponse({
    this.results,
    this.offset,
    this.number,
    this.totalResults,
  });

  List<FoodSimple> results;
  int offset;
  int number;
  int totalResults;
}

class FoodSimple {
  FoodSimple({
    this.id,
    this.title,
    this.image,
    this.imageType,
  });

  int id;
  String title;
  String image;
  String imageType;
}