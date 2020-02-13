import 'dart:async';

import 'package:flutter/material.dart';
import 'reusable_row.dart';
import 'reusable_list_tile.dart';
import 'add_income_screen.dart';
import 'add_expense_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money Manager'),
        backgroundColor: Colors.green,
        elevation: 1.5,
        centerTitle: false,
        actions: <Widget>[
          PopupMenuButton<ChoiceOfSelection>(
            icon: Icon(Icons.add),
            onSelected: _onItemMenuPress,
            itemBuilder: (BuildContext context) {
              return choices1.map((ChoiceOfSelection choice) {
                return PopupMenuItem<ChoiceOfSelection>(
                  value: choice,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        choice.icon,
                        color: Colors.green.shade700,
                      ),
                      Container(
                        width: 10.0,
                      ),
                      Text(
                        choice.title,
                        style: TextStyle(
                          color: Colors.green.shade700,
                        ),
                      )
                    ],
                  ),
                );
              }).toList();
            },
          ),
          PopupMenuButton<ChoiceOfSelection>(
            icon: Icon(Icons.remove_red_eye),
            onSelected: _onItemMenuPress,
            itemBuilder: (BuildContext context) {
              return choices2.map((ChoiceOfSelection choice) {
                return PopupMenuItem<ChoiceOfSelection>(
                  value: choice,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        choice.icon,
                        color: Colors.green.shade700,
                      ),
                      Container(
                        width: 10.0,
                      ),
                      Text(
                        choice.title,
                        style: TextStyle(
                          color: Colors.green.shade700,
                        ),
                      )
                    ],
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Settings'),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.clear,
                        color: Colors.green.shade700,
                      ),
                      title: Text(
                        'Clear DataBase',
                        style: TextStyle(color: Colors.green),
                      ),
                      onTap: () {},
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.info_outline,
                        color: Colors.green.shade700,
                      ),
                      title: Text(
                        'About',
                        style: TextStyle(color: Colors.green),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Developed by Austin Godwin',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(),
      bottomNavigationBar: Container(
        color: Colors.green,
        child: ReusableListTile(
          titleText: 'Balance',
          subtitleText: '\#30000',
        ),
      ),
    );
  }

  void _onItemMenuPress(ChoiceOfSelection choice) {
    if (choice.title == 'add income') {
      showIncomeAlert();
    } else if (choice.title == 'add expense') {
      showExpenseDialog();
    }
  }

  //Show the income alert box
  void showIncomeAlert() {
    var alert = AlertDialog(
      content: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'add income',
                hintText: 'income amount',
              ),
            ),
          )
        ],
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            'Add',
            style: TextStyle(color: Colors.green),
          ),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddIncome(),
                ),
              );
            });
          },
          child: Text(
            'More',
            style: TextStyle(color: Colors.green),
          ),
        ),
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Cancel',
            style: TextStyle(color: Colors.green),
          ),
        )
      ],
    );
    showDialog(context: context, builder: (_) => alert);
  }

  //Show the expense alert box
  void showExpenseDialog() {
    var alert = AlertDialog(
      content: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'add expenses',
                hintText: 'enter amount',
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            'Add',
            style: TextStyle(color: Colors.green),
          ),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddExpense(),
                ),
              );
            });
          },
          child: Text(
            'More',
            style: TextStyle(color: Colors.green),
          ),
        ),
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Cancel',
            style: TextStyle(color: Colors.green),
          ),
        ),
      ],
    );
    showDialog(context: context, builder: (_) => alert);
  }
}

class ChoiceOfSelection {
  ChoiceOfSelection({this.title, this.icon});

  final String title;
  final IconData icon;
}

List<ChoiceOfSelection> choices1 = <ChoiceOfSelection>[
  ChoiceOfSelection(title: 'add income', icon: Icons.attach_money),
  ChoiceOfSelection(title: 'add expense', icon: Icons.money_off),
];

List<ChoiceOfSelection> choices2 = <ChoiceOfSelection>[
  ChoiceOfSelection(title: 'view incomes', icon: Icons.attach_money),
  ChoiceOfSelection(title: 'view expenses', icon: Icons.money_off),
];

//When either the add or view button is pressed on popup
//void _onItemMenuPress(ChoiceOfSelection choice) {
//  if (choice.title == 'add income') {
//    showIncomeAlert();
//  }
//}

//Show the income alert box
//void showIncomeAlert() {
//  var alert = AlertDialog(
//    content: Row(
//      children: <Widget>[
//        Flexible(
//          child: TextField(
//            autofocus: true,
//            keyboardType: TextInputType.number,
//            decoration: InputDecoration(
//              border: OutlineInputBorder(),
//              labelText: 'add income',
//              hintText: 'income amount',
//            ),
//          ),
//        )
//      ],
//    ),
//    actions: <Widget>[
//      FlatButton(
//        onPressed: () {},
//        child: Text('Add'),
//      ),
//      FlatButton(
//        onPressed: () {
//          setState(() {
//            Navigator.push(
//              context,
//              MaterialPageRoute(
//                builder: (context) => AddIncome(),
//              ),
//            );
//          });
//        },
//        child: Text('More'),
//      ),
//      FlatButton(
//        onPressed: () {
//          Navigator.pop(context);
//        },
//        child: Text('Cancel'),
//      )
//    ],
//  );
//  showDialog(context: context, builder: (_) => alert);
//}
