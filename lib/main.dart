import 'package:flutter/material.dart';
import 'package:flutter_architectures_showcase/core/route/app_router.dart';
import 'package:flutter_architectures_showcase/core/route/routes.dart';
import 'package:flutter_architectures_showcase/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
     initialRoute: Routes.homeScreen,
    );
  }
}
