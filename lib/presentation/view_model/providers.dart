import 'package:dio/dio.dart';
import 'package:flutter_architectures_showcase/data/repo_impl/recipe_repo.dart';
import 'package:flutter_architectures_showcase/data/service/api_service.dart';
import 'package:flutter_architectures_showcase/doman/entities/recipe_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recipeRepoProvider =Provider((ref){
  final apiService =ApiService(Dio());
   return RecipeRepoImpl(apiService);
});
final recipeProvider = FutureProvider((ref) async {
  final repo = ref.read(recipeRepoProvider);
  final result = await repo.getRecipes();
  return result;
});