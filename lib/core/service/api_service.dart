import 'package:flutter_architectures_showcase/core/constant.dart';
import 'package:flutter_architectures_showcase/core/model/recipe_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
part 'api_service.g.dart';
@RestApi(baseUrl: Constant.baseUrl)
abstract class ApiService {
factory ApiService(Dio dio,{String baseUrl}) = _ApiService;

@GET(Constant.recipes)
Future<RecipeModel> getRecipes();
}