import 'package:flutter/material.dart';
import '../presentation_layer/resources_mg/routes_manager.dart';
import '../presentation_layer/resources_mg/strings_manager.dart';
import '../presentation_layer/resources_mg/theme_manager.dart';

class MyApp extends StatefulWidget {
  //default constructor can be used by another class,
  // we need to make a private named constructor and access it through static variable
  // so, we will call one object (same object) of the class in the memory to use one object and reduce memory.
  // anything will change in the same object class parameters,
  // even if we make more than one instance , the object parameters are the same.


  const MyApp._internal(); //named constructor

  static const MyApp _instance = MyApp._internal(); //static instance (single toon)
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: getAppTheme(),
      initialRoute: Routes.splashRoute,
      onGenerateRoute: RoutesGenerator.getRoute,
      onUnknownRoute: RoutesGenerator.unDefinedRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
