import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }

}
class _ExpensesState extends State<Expenses>{
  void _openAddExpenseOverlay(){
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense));
  }
  void _addExpense(Expense expense){
    setState((){
      _registeredExpenses.add(expense);
    });
  }

  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Ginos Pizza',
      amount: 25.00,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Train ticket to MA',
      amount: 15.25,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Movie ticket',
      amount: 18.00,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Expense Tracker"),
        actions:[
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add), 
          //Add more here if needed
          ), 
        ],
      ),
      body: Column(
        children: [
          Text("CHART GOES HERE"),
          Expanded(
            child: ExpensesList(
              expenses: _registeredExpenses,
            ),
          ),
        ],
      ),
    );
  }
}