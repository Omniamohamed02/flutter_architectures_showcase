import 'package:flutter_architectures_showcase/core/model/recipe_model.dart';
import 'package:flutter_architectures_showcase/core/service/api_result.dart';
import 'package:flutter_architectures_showcase/core/service/api_service.dart';

class RecipeRepo{
  final ApiService _apiService;
  RecipeRepo(this._apiService);
  
  Future<ApiResult<RecipeModel>> getRecipes() async{
   try{
    final response = await _apiService.getRecipes();
    return ApiResult.success(response);
   }catch(e){
    return ApiResult.failure(e.toString());
   }
  }
}