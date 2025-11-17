import 'package:flutter_architectures_showcase/doman/entities/recipe_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part'recipe_state.freezed.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState.initial() = _Initial;
  const factory RecipeState.loading() = Loading;
  const factory RecipeState.success(List<RecipeEntity> recipes) = Success;
  const factory RecipeState.error(String errorMassage) = Erorr;
}