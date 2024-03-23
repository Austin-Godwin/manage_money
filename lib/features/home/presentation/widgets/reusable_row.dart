import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  ReusableRow({this.icon, this.text, @required this.onPress});

  final IconData icon;
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Icon(icon),
        ),
        Padding(
          padding: EdgeInsets.all(1.0),
          child: MaterialButton(
            child: Text(text),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
