import 'package:flutter/material.dart';
import 'package:flutter_architectures_showcase/data/model/recipe_model.dart';
import 'package:flutter_architectures_showcase/presentation/features/widgets/recipe_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Recipe App' ,
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder:(context,index){
          return RecipeWidget();
        }
         ));
  }
}