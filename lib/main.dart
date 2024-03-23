import 'package:flutter/material.dart';
import 'package:manage_money/features/home/presentation/views/home_view.dart';
import 'package:manage_money/features/home/presentation/views/add_expense_view.dart';
import 'package:manage_money/features/home/presentation/views/add_income_view.dart';
import 'package:manage_money/features/home/presentation/views/login_view.dart';
import 'package:manage_money/features/home/presentation/views/signup_view.dart';
import 'package:manage_money/features/home/presentation/views/splash_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.pinkAccent,
      ),
      home: SplashScreen(),
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        AddIncome.id: (context) => AddIncome(),
        AddExpense.id: (context) => AddExpense(),
        Home.id: (context) => Home()
      },
    );
  }
}
