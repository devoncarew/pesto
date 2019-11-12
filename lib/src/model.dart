
class Recipe {
  const Recipe({
    this.name,
    this.author,
    this.description,
    this.imagePath,
    this.imagePackage,
    this.ingredientsImagePath,
    this.ingredientsImagePackage,
    this.ingredients,
    this.steps,
  });

  final String name;
  final String author;
  final String description;
  final String imagePath;
  final String imagePackage;
  final String ingredientsImagePath;
  final String ingredientsImagePackage;
  final List<RecipeIngredient> ingredients;
  final List<RecipeStep> steps;
}

class RecipeIngredient {
  const RecipeIngredient({this.amount, this.description});

  final String amount;
  final String description;
}

class RecipeStep {
  const RecipeStep({this.duration, this.description});

  final String duration;
  final String description;
}
