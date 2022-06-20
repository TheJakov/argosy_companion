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

  static Text displayDetailTextPlaceholder(String value){
    return Text(value,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.black)
    );
  }

  static Row displayDetailTextComponent(String value, String placeholder){
    return Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArgosyCompanionUtil.displayDetailTextPlaceholder(placeholder),
              const SizedBox(
                height: 5,
              ),
              ArgosyCompanionUtil.displayDetailTextProperty(value)
          ],
        ),
      ]
    );
  }

}