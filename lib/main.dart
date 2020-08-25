import 'package:flutter/material.dart';
import 'package:manage_money/home.dart';
import 'package:manage_money/screens/add_expense_screen.dart';
import 'package:manage_money/screens/add_income_screen.dart';
import 'package:manage_money/screens/login_screen.dart';
import 'package:manage_money/screens/signup_screen.dart';
import 'package:manage_money/screens/splash_screen.dart';

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
