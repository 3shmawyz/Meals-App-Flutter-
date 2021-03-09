import 'package:flutter/material.dart';
import 'package:meals_app/Widgets/meal_item.dart';
import 'package:meals_app/dummy_data.dart';
class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';


  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {

  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryTitle =routeArg["title"];
    final categoryId = routeArg["id"];
    final CategoryMeals = DUMMY_MEALS.where((meal) => meal.categories.contains(categoryId)).toList();
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle ),),
      body:ListView.builder(
        itemBuilder:(context,index){
           return MealItem(title: CategoryMeals[index].title,
               id: CategoryMeals[index].id,
               imageUrl: CategoryMeals[index].imageUrl
               , duration: CategoryMeals[index].duration,
               complexity: CategoryMeals[index].complexity,
               affordability: CategoryMeals[index].affordability);
        },
        itemCount:CategoryMeals.length ,
      ),
    );
  }
}
