import 'package:flutter/material.dart';

class ArgosyCompanionUtil {
  static Text displayDetailTextProperty(String value){
    return
      Text(value.isNotEmpty ? value : 'Nema podatka',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontStyle: value.isNotEmpty ? FontStyle.normal : FontStyle.italic,
            color: value.isNotEmpty ? Colors.black : Colors.grey)
    );
  }
}