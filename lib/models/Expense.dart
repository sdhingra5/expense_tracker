import 'package:uuid/uuid.dart';
const uuid = Uuid();//making the uuid class

enum Category {leisure,food,travel,work}

class Expense {
  Expense ({required this.title, required this.amount, 
  required this.date, required this.category}) : id = uuid.v4(); 


  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category; //to flexible -> limits this to 4 cats -> leisure, food, travel, work
}