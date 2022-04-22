import 'package:flutter/material.dart';

class DropdownButtonBankAccount extends StatefulWidget {
  String dropdownvalue;
  DropdownButtonBankAccount({required this.dropdownvalue});

  @override
  State<DropdownButtonBankAccount> createState() =>
      _DropdownButtonBankAccountState();
}

class _DropdownButtonBankAccountState extends State<DropdownButtonBankAccount> {


  // List of items in our dropdown menu
  var items = [
    'Lloyds Bank',
    'HSBC Bank',
    'Barclays Bank',
    'NatWest Bank',
    'Santander UK',
    'Metro Bank',
    'Bank of Ireland',
    'Danske Bank',
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
        value: widget.dropdownvalue,

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
            widget.dropdownvalue = newValue!;
          });
        },
      ),
    );
  }
}

//
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
// // Initial Selected Value
//   String dropdownvalue = 'Item 1';
//
// // List of items in our dropdown menu
//   var items = [
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Geeksforgeeks"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButton(
//
//               // Initial Value
//               value: dropdownvalue,
//
//               // Down Arrow Icon
//               icon: const Icon(Icons.keyboard_arrow_down),
//
//               // Array list of items
//               items: items.map((String items) {
//                 return DropdownMenuItem(
//                   value: items,
//                   child: Text(items),
//                 );
//               }).toList(),
//               // After selecting the desired option,it will
//               // change button value to selected value
//               onChanged: (String? newValue) {
//                 setState(() {
//                   dropdownvalue = newValue!;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//

// import 'package:flutter/material.dart';
//
//
// class Home extends  StatefulWidget {
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//
//   String selectval = "United Kingdom";
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//             title: Text("Style Dropdown Button"),
//             backgroundColor: Colors.redAccent
//         ),
//         body: Container(
//             alignment: Alignment.center,
//             padding: EdgeInsets.all(50),
//             child: Column(
//                 children: [
//
//                   DecoratedBox(
//                       decoration: BoxDecoration(
//                           color:Colors.white, //background color of dropdown button
//                           border: Border.all(color: Colors.black, width:1), //border of dropdown button
//                           borderRadius: BorderRadius.circular(0), //border raiuds of dropdown button
//
//                       ),
//
//                       child:Padding(
//                           padding: EdgeInsets.only(left:30, right:30),
//                           child:DropdownButton(
//                             value: "United Kingdom",
//                             items: [ //add items in the dropdown
//                               DropdownMenuItem(
//                                 child: Text("United Kingdom"),
//                                 value: "United Kingdom",
//                               ),
//                               DropdownMenuItem(
//                                   child: Text("Canada"),
//                                   value: "Canada"
//                               ),
//                               DropdownMenuItem(
//                                 child: Text("Russia"),
//                                 value: "Russia",
//                               )
//
//                             ],
//                             onChanged: (value){ //get value when changed
//                               print("You have selected $value");
//                             },
//                             icon: Padding( //Icon at tail, arrow bottom is default icon
//                                 padding: EdgeInsets.only(left:20),
//                                 child:  Icon(Icons.keyboard_arrow_down),
//                             ),
//                             iconEnabledColor: Colors.black, //Icon color
//                             style: TextStyle(  //te
//                                 color: Colors.black, //Font color
//                                 fontSize: 20 //font size on dropdown button
//                             ),
//
//                             dropdownColor: Colors.white, //dropdown background color
//                             underline: Container(), //remove underline
//                             isExpanded: true, //make true to make width 100%
//                           )
//                       )
//                   ),
//
//                 ]
//             )
//         )
//     );
//   }
// }
