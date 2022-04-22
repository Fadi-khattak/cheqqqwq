import 'package:flutter/material.dart';

class DropdownSelectPayee extends StatefulWidget {
  const DropdownSelectPayee({Key? key}) : super(key: key);

  @override
  State<DropdownSelectPayee> createState() => _DropdownSelectPayeeState();
}

class _DropdownSelectPayeeState extends State<DropdownSelectPayee> {
  String dropdownvalue = 'Payee 1';

  // List of items in our dropdown menu
  var items = [
    'Payee 1',
    'Payee 2',
    'Payee 3',
    'Payee 4',
    'Payee 5',
    'Payee 6',
    'Payee 7',
    'Payee 8',
    'Payee 9',
    'Payee 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      height: 25,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.0),
      ),
      child: DropdownButton(
        isExpanded: true,
        elevation: 0,
        // Initial Value
        value: dropdownvalue,

        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),

        // Array list of items
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: TextStyle(fontSize: 10),
            ),
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
