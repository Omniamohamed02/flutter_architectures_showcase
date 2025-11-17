import 'package:flutter/material.dart';
import 'package:flutter_architectures_showcase/data/core/route/routes.dart';
import 'package:flutter_architectures_showcase/doman/entities/recipe_entity.dart' show RecipeEntity;
import 'package:flutter_architectures_showcase/presentation/features/home_screen.dart';
import 'package:flutter_architectures_showcase/presentation/features/recipe_screen.dart';

class AppRouter {
 static Route? generateRoute(RouteSettings settings){
  final arguments = settings.arguments;
    switch(settings.name){
    case Routes.homeScreen :
      return MaterialPageRoute(
        builder: (_) => HomeScreen());
     case Routes.recipesScreen :
     assert(arguments is RecipeEntity,);
      final recipe = arguments as RecipeEntity;
      return MaterialPageRoute(
        builder: (_) => RecipeScreen(recipe: recipe,));  

    default: return null;      
    }
  }
}