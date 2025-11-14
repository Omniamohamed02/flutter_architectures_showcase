import 'package:flutter/material.dart';
import 'package:flutter_architectures_showcase/core/route/routes.dart';
import 'package:flutter_architectures_showcase/home_screen.dart';
import 'package:flutter_architectures_showcase/recipe_screen.dart';

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