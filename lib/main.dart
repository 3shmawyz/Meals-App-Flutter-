import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_detial_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import 'screens/categroy_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254 ,229, 1),
        fontFamily:  "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText2: TextStyle(color:Color.fromRGBO(20, 51, 51, 1)),
          bodyText1: TextStyle(color:Color.fromRGBO(20, 51, 51, 1)),
          headline6: TextStyle(fontFamily: "RobotoCondensed" , fontSize: 20, fontWeight: FontWeight.bold)
        )
      ),
      initialRoute: '/',
      // home: Categories(),
      routes:{
        '/' :(context) => TabsScreen(),
        CategoryMealsScreen.routeName :(context)=> CategoryMealsScreen(),
        MealDetailScreen.routeName : (context)=> MealDetailScreen(),

      },
    );
  }
}


