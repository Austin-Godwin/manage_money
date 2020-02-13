import 'package:flutter/material.dart';

const colour = Colors.white;

class ReusableListTile extends StatelessWidget {
  ReusableListTile({
    @required this.titleText,
    @required this.subtitleText,
  });

  final String titleText;
  final String subtitleText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleText,
        style: TextStyle(
          color: colour,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitleText,
        style: TextStyle(color: colour),
      ),
    );
  }
}
