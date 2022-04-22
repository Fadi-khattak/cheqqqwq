
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets/BottomButtons.dart';
import '../Widgets/DropdownButtonBankAccount.dart';
import '../Widgets/check_box.dart';
import '../Widgets/dropdown_digitalised_signature.dart';
import '../Widgets/dropdown_select_payee.dart';
import '../Widgets/textfield_widget.dart';
import 'Cheque_Created.dart';
import 'Email_Sent.dart';

class CreateCheque extends StatefulWidget {
  bool val = false;

  CreateCheque({Key? key}) : super(key: key);

  @override
  State<CreateCheque> createState() => _CreateChequeState();
}

class _CreateChequeState extends State<CreateCheque> {
  TextEditingController payeeIdController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController dateOnChequeController = TextEditingController();
  TextEditingController invoiceNoController = TextEditingController();
  TextEditingController chequeNoController = TextEditingController();
  TextEditingController memoController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  String dropdownvalue = 'Lloyds Bank';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Create Cheque'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 30, bottom: 30),
              child: Text(
                'New Cheque',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 60, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Bank Account',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),

                  Text(
                    'Select Payee',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
// SizedBox(width: 30,),
                  Text(
                    'Payee ID',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButtonBankAccount(dropdownvalue:dropdownvalue ,),
                  DropdownSelectPayee(),
                  TextFieldWidget(payeeIdController),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 5, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Amount',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Text(
                    'Date on the Cheque',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Digitalised Signature',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFieldWidget(amountController),
                  TextFieldWidget(dateOnChequeController),
                  DropdownDigitalisedSignature(),
                ],
              ),
            ),
            Center(
              child: Text(
                'Format: (DD/MM/YYYY)',
                style: TextStyle(fontSize: 8),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Invoice No.',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '(if applicable)',
                    style: TextStyle(fontSize: 8),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      'Cheque No.',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 0),
              child: Row(
                children: [
                  TextFieldWidget(invoiceNoController),
                  SizedBox(
                    width: 20,
                  ),
                  TextFieldWidget(chequeNoController),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'PRINT WITHOUT',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              children: [
                CheckBox(
                    value: false,
                    ontap: (status) {
                      widget.val = status;
                      print(status);
                      setState(() {});
                    },
                    title: 'Amount'),
                CheckBox(
                    value: false,
                    ontap: (status) {
                      widget.val = status;
                      print(status);
                      setState(() {});
                    },
                    title: 'Sign'),
                CheckBox(
                    value: false,
                    ontap: (status) {
                      widget.val = status;
                      print(status);
                      setState(() {});
                    },
                    title: 'Payee'),
                CheckBox(
                    value: false,
                    ontap: (status) {
                      widget.val = status;
                      print(status);
                      setState(() {});
                    },
                    title: 'Date'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Memo',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
              Container(
                  height: 25,
                  width: MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1.0),
                  ),
                  child: Center(
                    child: TextField(
                      controller: memoController,
                      decoration: InputDecoration(
                      ),
                    ),
                  )),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Comment',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 25,
                        width: MediaQuery.of(context).size.width*1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 1.0),
                        ),
                        child: Center(
                          child: TextField(
                            controller: commentController,
                            decoration: InputDecoration(
                            ),
                          ),
                        )),
                  ],
                )),

          ],
        ),
      ),
      bottomNavigationBar:BottomButtons(leftTitle: "Back",leftIcon: Icons.keyboard_arrow_left,onBack: (){},rightTitle:"Next",rightIcon: Icons.keyboard_arrow_right,onNext: (){}),
    );
  }
}
