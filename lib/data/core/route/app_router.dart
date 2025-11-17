import 'package:flutter/material.dart';
import 'package:flutter_architectures_showcase/data/core/route/routes.dart';
import 'package:flutter_architectures_showcase/presentation/features/home_screen.dart';
import 'package:flutter_architectures_showcase/presentation/features/recipe_screen.dart';

class AppRouter {
 static Route? generateRoute(RouteSettings settings){
    switch(settings.name){
    case Routes.homeScreen :
      return MaterialPageRoute(
        builder: (_) => HomeScreen());
     case Routes.recipesScreen :
      return MaterialPageRoute(
        builder: (_) => RecipeScreen());  

    default: return null;      
    }
  }
}