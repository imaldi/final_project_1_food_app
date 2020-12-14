class RecipeResponse {
  RecipeResponse({
    this.recipes,
  });

  List<Recipe> recipes;
}

class Recipe {
  Recipe({
    this.vegetarian,
    this.vegan,
    this.glutenFree,
    this.dairyFree,
    this.veryHealthy,
    this.cheap,
    this.veryPopular,
    this.sustainable,
    this.weightWatcherSmartPoints,
    this.gaps,
    this.lowFodmap,
    this.aggregateLikes,
    this.spoonacularScore,
    this.healthScore,
    this.creditsText,
    this.license,
    this.sourceName,
    this.pricePerServing,
    this.extendedIngredients,
    this.id,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.sourceUrl,
    this.image,
    this.imageType,
    this.summary,
    this.cuisines,
    this.dishTypes,
    this.diets,
    this.occasions,
    this.instructions,
    this.analyzedInstructions,
    this.originalId,
    this.spoonacularSourceUrl,
  });

  bool vegetarian;
  bool vegan;
  bool glutenFree;
  bool dairyFree;
  bool veryHealthy;
  bool cheap;
  bool veryPopular;
  bool sustainable;
  int weightWatcherSmartPoints;
  String gaps;
  bool lowFodmap;
  int aggregateLikes;
  int spoonacularScore;
  int healthScore;
  String creditsText;
  String license;
  String sourceName;
  double pricePerServing;
  List<ExtendedIngredient> extendedIngredients;
  int id;
  String title;
  int readyInMinutes;
  int servings;
  String sourceUrl;
  String image;
  String imageType;
  String summary;
  List<dynamic> cuisines;
  List<String> dishTypes;
  List<String> diets;
  List<String> occasions;
  String instructions;
  List<AnalyzedInstruction> analyzedInstructions;
  dynamic originalId;
  String spoonacularSourceUrl;
}

class AnalyzedInstruction {
  AnalyzedInstruction({
    this.name,
    this.steps,
  });

  String name;
  List<Step> steps;
}

class Step {
  Step({
    this.number,
    this.step,
    this.ingredients,
    this.equipment,
    this.length,
  });

  int number;
  String step;
  List<Ent> ingredients;
  List<Ent> equipment;
  Length length;
}

class Ent {
  Ent({
    this.id,
    this.name,
    this.localizedName,
    this.image,
    this.temperature,
  });

  int id;
  String name;
  String localizedName;
  String image;
  Length temperature;
}

class Length {
  Length({
    this.number,
    this.unit,
  });

  int number;
  String unit;
}

class ExtendedIngredient {
  ExtendedIngredient({
    this.id,
    this.aisle,
    this.image,
    this.consistency,
    this.name,
    this.original,
    this.originalString,
    this.originalName,
    this.amount,
    this.unit,
    this.meta,
    this.metaInformation,
    this.measures,
  });

  int id;
  String aisle;
  String image;
  Consistency consistency;
  String name;
  String original;
  String originalString;
  String originalName;
  double amount;
  String unit;
  List<String> meta;
  List<String> metaInformation;
  Measures measures;
}

enum Consistency { SOLID, LIQUID }

class Measures {
  Measures({
    this.us,
    this.metric,
  });

  Metric us;
  Metric metric;
}

class Metric {
  Metric({
    this.amount,
    this.unitShort,
    this.unitLong,
  });

  double amount;
  String unitShort;
  String unitLong;
}
