import 'package:bloc/bloc.dart';
import 'package:flutter_architectures_showcase/data/service/api_result.dart';
import 'package:flutter_architectures_showcase/doman/entities/recipe_entity.dart';
import 'package:flutter_architectures_showcase/doman/repo/repo_interface.dart';
import 'package:flutter_architectures_showcase/presentation/view_model/cubit/recipe_state.dart';



class RecipeCubit extends Cubit<RecipeState> {
   final RecipeRepoInterface repo;
   RecipeEntity? recipe;
  RecipeCubit(this.repo) : super(RecipeState.initial());
   
  Future<void> getRecipes() async{
    emit(RecipeState.loading());
    final response = await repo.getRecipes();
    response.when(
      success: (data){
        emit(RecipeState.success(data));
      },
       failure: (error){
        emit(RecipeState.error(error));
       });
  }
}
