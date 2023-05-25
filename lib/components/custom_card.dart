import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
  IconData icon;
  Color color;
  String text;
  CustomCard({required this.color, required this.icon,required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: color,),
        SizedBox(width: 15,),
        Text(text),
      ],
    );
  }
}
