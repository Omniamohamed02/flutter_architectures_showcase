import 'package:flutter/material.dart';
import 'package:flutter_architectures_showcase/data/core/route/routes.dart';
import 'package:flutter_architectures_showcase/presentation/features/recipe_screen.dart';
import 'package:flutter_architectures_showcase/presentation/features/widgets/recipe_widget.dart';
import 'package:flutter_architectures_showcase/presentation/view_model/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(recipeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Recipe App',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: value.when(
        data: (recipes) {
          return ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return RecipeWidget(
                recipe: recipes[index],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipeScreen(recipe: recipes[index],)),
                  );
                },
              );
            },
          );
        },
        error: (error, stackTrace) {
          return Text(error.toString());
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
