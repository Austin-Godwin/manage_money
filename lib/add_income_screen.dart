import 'package:flutter/material.dart';

class AddIncome extends StatefulWidget {
  @override
  _AddIncomeState createState() => _AddIncomeState();
}

class _AddIncomeState extends State<AddIncome> {
  int _rgprogramming = -1;
  String _selectedValue;
  final List<RadioGroup> _incomeList = [
    RadioGroup(index: 1, text: "Investment"),
    RadioGroup(index: 2, text: "Payments"),
    RadioGroup(index: 3, text: "Salary"),
    RadioGroup(index: 4, text: "Refunds"),
    RadioGroup(index: 5, text: "Others"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Income'),
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
                labelText: 'Add Income',
                hintText: 'income amount',
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
              SizedBox(
                height: 20.0,
                child: Divider(
                  color: Colors.grey[900],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildRadioButton(),
                ],
              )
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

  Widget _buildRadioButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _incomeList
          .map((income) => RadioListTile(
                title: Text(income.text),
                value: income.index,
                groupValue: _rgprogramming,
                activeColor: Colors.green,
                dense: true,
                controlAffinity: ListTileControlAffinity.trailing,
                onChanged: (value) {
                  setState(() {
                    _rgprogramming = value;
//                    _selectedValue = income.text;
                  });
                },
              ))
          .toList(),
    );
  }
}

class RadioGroup {
  final int index;
  final String text;
  RadioGroup({this.index, this.text});
}
