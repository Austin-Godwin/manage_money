import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  static final String id = 'add_expense_screen';
  @override
  _AddExpenseState createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  int _rgprogramming = -1;
  String _selectedvalue;
  List<RadioGroup> _expenseList = [
    RadioGroup(index: 1, text: "Feeding"),
    RadioGroup(index: 2, text: "Clothing"),
    RadioGroup(index: 3, text: "Bill"),
    RadioGroup(index: 4, text: "Subscription"),
    RadioGroup(index: 5, text: "Entertainment"),
    RadioGroup(index: 6, text: "Others"),
  ];

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
            height: 10.0,
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
            height: 30.0,
          ),
          //Select Categories sections
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 0.0,
            ),
            child: Text(
              'Select Category',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.green[900],
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            child: Divider(
              color: Colors.grey[900],
            ),
          ),
          Flexible(child: _buildRadioButton()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        elevation: 0.0,
        onPressed: () {},
      ),
    );
  }

  Widget _buildRadioButton() {
    return ListView(
//        crossAxisAlignment: CrossAxisAlignment.start,
        children: _expenseList
            .map((expense) => RadioListTile(
                  title: Text(expense.text),
                  value: expense.index,
                  groupValue: _rgprogramming,
                  activeColor: Colors.green,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  onChanged: (value) {
                    setState(() {
                      _rgprogramming = value;
                      _selectedvalue = expense.text;
                    });
                  },
                ))
            .toList());
  }
}

class RadioGroup {
  final int index;
  final String text;
  RadioGroup({this.index, this.text});
}
