
import 'package:freezed_annotation/freezed_annotation.dart';
part 'recipe_model.g.dart';

@JsonSerializable()
class RecipeModel {
  List<Recipes>? recipes;
  RecipeModel({this.recipes});
  factory RecipeModel.fromJson(Map<String,dynamic> json)=>_$RecipeModelFromJson(json);
}
@JsonSerializable()
class Recipes{
  int? id;
  String? name;
  List<String>? ingredients;
  List<String>? instructions;
  int? prepTimeMinutes;
  int? cookTimeMinutes;
  int? servings;
  String? difficulty;
  String? cuisine;
  int? caloriesPerServing;
  List<String>? tags;
  int? userId;
  String? image;
  double? rating;
  int? reviewCount;
  List<String>? mealType;

  Recipes(
      {this.id,
      this.name,
      this.ingredients,
      this.instructions,
      this.prepTimeMinutes,
      this.cookTimeMinutes,
      this.servings,
      this.difficulty,
      this.cuisine,
      this.caloriesPerServing,
      this.tags,
      this.userId,
      this.image,
      this.rating,
      this.reviewCount,
      this.mealType});
      factory Recipes.fromJson(Map<String,dynamic>json) => _$RecipesFromJson(json);
}