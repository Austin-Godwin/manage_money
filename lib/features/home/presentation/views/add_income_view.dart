import 'package:flutter/material.dart';

class AddIncome extends StatefulWidget {
  static final String id = 'add_income_screen';

  @override
  _AddIncomeState createState() => _AddIncomeState();
}

class _AddIncomeState extends State<AddIncome> {
  /* For the radio group*/
  int _rgprogramming = -1;
  String _selectedValue;
  final List<RadioGroup> _incomeList = [
    RadioGroup(index: 1, text: "Investment"),
    RadioGroup(index: 2, text: "Payments"),
    RadioGroup(index: 3, text: "Salary"),
    RadioGroup(index: 4, text: "Refunds"),
    RadioGroup(index: 5, text: "Others"),
  ];

  /*Function for user income input and description*/
  Padding _buildTextField(
      {TextInputType textInputType, String label, String hint}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 0.0,
      ),
      child: TextField(
        autofocus: true,
        keyboardType: textInputType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          labelText: label,
          hintText: hint,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Income'),
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),

            /* I created a function called buildTextField to refactor the TextField code */
            _buildTextField(
                textInputType: TextInputType.number,
                label: 'Add income',
                hint: 'Income amount'),
            SizedBox(
              height: 10.0,
            ),

            /* I created a function called buildTextField to refactor the TextField code */
            _buildTextField(
                textInputType: TextInputType.text,
                label: 'Add description',
                hint: 'Description'),
            SizedBox(
              height: 30.0,
            ),

            /*This is the Select Categories sections*/
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 0.0,
              ),
              child: Text(
                'Select Category',
                textAlign: TextAlign.center,
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

            /*I created a widget called _buildRadioButton for my radio button*/
            Flexible(child: _buildRadioButton())
          ],
        ),
      ),

      /* The floating action button should do some calculations when pressed*/
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        elevation: 0.0,
        onPressed: () {},
      ),
    );
  }

  /* Radio button widget*/
  Widget _buildRadioButton() {
    return ListView(
//      crossAxisAlignment: CrossAxisAlignment.start,
      children: _incomeList
          .map((income) => RadioListTile(
                title: Text(income.text),
                value: income.index,
                groupValue: _rgprogramming,
                activeColor: Colors.green,
                dense: false,
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
