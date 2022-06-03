import 'package:flutter/material.dart';

class RectangleIconButton extends StatelessWidget {
  RectangleIconButton({required this.icon, required this.onClick});
  final IconData icon;
  final Function() onClick;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Color(0xFF8D8E98),
      ),
      onPressed: onClick,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
