import 'package:flutter_architectures_showcase/data/mapper/recipe_mapper.dart';
import 'package:flutter_architectures_showcase/data/service/api_result.dart';
import 'package:flutter_architectures_showcase/data/service/api_service.dart';
import 'package:flutter_architectures_showcase/doman/entities/recipe_entity.dart';
import 'package:flutter_architectures_showcase/doman/repo/repo_interface.dart';
class RecipeRepoImpl implements RecipeRepoInterface {
  final ApiService _apiService;

  RecipeRepoImpl(this._apiService);

  @override
  Future<ApiResult<List<RecipeEntity>>> getRecipes() async {
    try {
      
      final model = await _apiService.getRecipes();
      final entities = model.toEntity();

      return ApiResult.success(entities);

    } catch (e) { 
      return ApiResult.failure(e.toString());
    }
  }
}