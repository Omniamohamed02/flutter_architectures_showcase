import 'package:flutter/material.dart';
import 'package:flutter_architectures_showcase/presentation/features/recipe_screen.dart';
import 'package:flutter_architectures_showcase/presentation/features/widgets/recipe_widget.dart';
import 'package:flutter_architectures_showcase/presentation/view_model/cubit/recipe_cubit.dart';
import 'package:flutter_architectures_showcase/presentation/view_model/cubit/recipe_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Recipe App',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: BlocBuilder<RecipeCubit, RecipeState>(
        
        builder: (context, state) {
          return state.when(
             initial: () {
               return Text('hi');
             },
             loading: (){
              return CircularProgressIndicator();
             },
              success: (data){
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context,index){
                   return RecipeWidget(recipe: data[index],
                    onTap: () { 
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeScreen(recipe: data[index],)),
                );
                     },);
                  });
              },
               error: (error){
                  return Text(error.toString());
               },);
        },
      ),
    );
  }
}
