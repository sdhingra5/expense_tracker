import 'package:expense_tracker/models/Expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
   return Card(
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20, 
        vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title), //Text box at the top of the col
            const SizedBox(height: 4,),//a little space between first row of the col and the second
            Row( 
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                Spacer(),
                Row(children: [
                  const Icon(Icons.alarm),
                  const SizedBox(width:8),
                  Text(expense.date.toString()),
                ],)
               
              ],),
          ],
        ),
      ),
   );
  }
}