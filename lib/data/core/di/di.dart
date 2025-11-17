import 'package:dio/dio.dart';
import 'package:flutter_architectures_showcase/data/repo_impl/recipe_repo.dart';
import 'package:flutter_architectures_showcase/data/service/api_service.dart';
import 'package:flutter_architectures_showcase/doman/repo/repo_interface.dart';
import 'package:flutter_architectures_showcase/presentation/view_model/cubit/recipe_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class Di {
  static Future<void> init() async {
    getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
    getIt.registerLazySingleton<RecipeRepoInterface>(
      () => RecipeRepoImpl(getIt<ApiService>()),
    );

    getIt.registerFactory<RecipeCubit>(
      () => RecipeCubit(getIt<RecipeRepoInterface>()),
    );
  }
}
