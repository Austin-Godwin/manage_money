import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  @override
  _AddExpenseState createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense'),
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
//            TextField(
//              autofocus: true,
//              keyboardType: TextInputType.number,
//              decoration: InputDecoration(
//                border: OutlineInputBorder(),
//                labelText: 'Add Income',
//                hintText: 'income amount',
//              ),
//            ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 0.0,
            ),
            child: TextField(
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                labelText: 'Add expense',
                hintText: 'expense amount',
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 0.0,
            ),
            child: TextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                labelText: 'Add description',
                hintText: 'Description',
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
            child: Divider(
              color: Colors.grey[900],
            ),
          ),
          //Select Categories sections
          Column(
            children: <Widget>[
              Text(
                'Select Category',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green[800],
                  fontSize: 18.0,
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {},
      ),
    );
  }
}
