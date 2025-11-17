import 'package:flutter/material.dart';
import 'package:flutter_architectures_showcase/data/core/di/di.dart';
import 'package:flutter_architectures_showcase/data/core/route/routes.dart';
import 'package:flutter_architectures_showcase/doman/entities/recipe_entity.dart';
import 'package:flutter_architectures_showcase/presentation/features/home_screen.dart';
import 'package:flutter_architectures_showcase/presentation/features/recipe_screen.dart';
import 'package:flutter_architectures_showcase/presentation/view_model/cubit/recipe_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RecipeCubit>()..getRecipes(),
            child: HomeScreen(),
          ),
        );
      case Routes.recipesScreen: assert(arguments is RecipeEntity,);
      final recipe = arguments as RecipeEntity;
      return MaterialPageRoute(
        builder: (_) => RecipeScreen(recipe: recipe,)); 
      default:
        return null;
    }
  }
}
