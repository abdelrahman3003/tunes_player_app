import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  Item({super.key, required this.color, required this.ontap});
  Color? color;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(color: color, height: 85, width: double.infinity),
    );
  }
}
