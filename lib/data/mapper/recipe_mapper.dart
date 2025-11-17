import 'package:flutter_architectures_showcase/data/model/recipe_model.dart';
import 'package:flutter_architectures_showcase/doman/entities/recipe_entity.dart';

extension RecipeModelMapper on RecipeModel {
  List<RecipeEntity> toEntity() {
    return recipes?.map((r) => r.toEntity()).toList() ?? [];
  }
}

extension RecipesMapper on Recipes {
  RecipeEntity toEntity() {
    return RecipeEntity(
      id: id ?? 0,
      name: name ?? "",
      ingredients: ingredients ?? [],
      instructions: instructions ?? [],
      prepTimeMinutes: prepTimeMinutes ?? 0,
      cookTimeMinutes: cookTimeMinutes ?? 0,
      servings: servings ?? 0,
      difficulty: difficulty ?? "",
      cuisine: cuisine ?? "",
      caloriesPerServing: caloriesPerServing ?? 0,
      tags: tags ?? [],
      userId: userId ?? 0,
      image: image ?? "",
      rating: rating ?? 0.0,
      reviewCount: reviewCount ?? 0,
      mealType: mealType ?? [],
    );
  }
}
