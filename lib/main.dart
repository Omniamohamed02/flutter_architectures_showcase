
import 'package:flutter/material.dart';
import 'package:flutter_architectures_showcase/data/core/route/app_router.dart';
import 'package:flutter_architectures_showcase/data/core/route/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
 // WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
     initialRoute: Routes.homeScreen,
    );
  }
}
