import 'package:flutter/material.dart';

class DropdownDigitalisedSignature extends StatefulWidget {
  const DropdownDigitalisedSignature({Key? key}) : super(key: key);

  @override
  State<DropdownDigitalisedSignature> createState() => _DropdownDigitalisedSignatureState();
}

class _DropdownDigitalisedSignatureState extends State<DropdownDigitalisedSignature> {

  String dropdownvalue = 'Signature 1';

  // List of items in our dropdown menu
  var items = [
    'Signature 1',
    'Signature 2',
    'Signature 3',
    'Signature 4',
    'Signature 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.0),
      ),
      child: DropdownButton(
        // Initial Value
        value: dropdownvalue,

        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),

        // Array list of items
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items,style: TextStyle(fontSize: 10),),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
      ),
    );
  }
}