import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Master extends StatefulWidget {
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  var now = DateTime.now().toString();
  var transactionList = [
    {
      "amount": 200,
      "icon": Icon(Icons.attach_money),
      "date": dateTime,
    },
    {
      "amount": 300,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 500,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 100,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 800,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 1000,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 700,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 900,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 400,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 100,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 600,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 300,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 200,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 100,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 600,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 500,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 300,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 2000,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 700,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 100,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 600,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 500,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 200,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 900,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 400,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 700,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 200,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 300,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 400,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    },
    {
      "amount": 300,
      "icon": Icon(Icons.money_off),
      "date": dateTime,
    }
  ];

  static get dateTime =>
      DateFormat("EEEE/dd-MM-yyyy/kk:mm:a").format(DateTime.now()).toString();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactionList.length,
      itemBuilder: (context, int index) {
        return SingleTransaction(
          transactionAmount: transactionList[index]['amount'],
          transactionIcon: transactionList[index]['icon'],
          transactionDate: transactionList[index]['date'],
        );
      },
    );
  }
}

class SingleTransaction extends StatelessWidget {
  final transactionAmount;
  final transactionIcon;
  final transactionDate;

  SingleTransaction(
      {this.transactionAmount, this.transactionIcon, this.transactionDate});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade50,
      child: ListTile(
        leading: Icon(
          Icons.attach_money,
          color: Colors.green,
        ),
        title: Text("\#$transactionAmount"),
        subtitle: Text("$transactionDate"),
        trailing: TextButton(
          onPressed: () {},
          child: Text("View"),
        ),
      ),
    );
  }
}

//class Master {
//  final String formatted;
//  final String amount;
//  final String transaction;
//  final String category;
//  final String description;
//
//  Master(
//      {this.formatted,
//      this.amount,
//      this.transaction,
//      this.category,
//      this.description});
//}
