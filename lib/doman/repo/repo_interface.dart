
import 'package:flutter_architectures_showcase/data/service/api_result.dart';
import 'package:flutter_architectures_showcase/doman/entities/recipe_entity.dart';

abstract class RecipeRepoInterface {
  Future<ApiResult<List<RecipeEntity>>> getRecipes();
}
