
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets/BottomButtons.dart';
import '../Widgets/dropdown_select_payee.dart';
import '../Widgets/textfield_widget.dart';
import 'Cheque_Created.dart';
import 'Email_Sent.dart';

class CreateInvoice1 extends StatelessWidget {
   CreateInvoice1({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dueDateController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController invoiceNoController = TextEditingController();
  TextEditingController customerMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Create Invoice 1'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 30, bottom: 30),
              child: Text(
                'Create Invoice',
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
                    'Invoice Number',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Date',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 95,
                  ),
                  Text(
                    'Due Date',
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
                  TextFieldWidget(invoiceNoController),
                  TextFieldWidget(dateController),
                  TextFieldWidget(dueDateController),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 140, right: 10, top: 2, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Format: (DD/MM/YYYY)',
                    style: TextStyle(fontSize: 8),
                  ),
                  Text(
                    'Format: (DD/MM/YYYY)',
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 30, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Payee',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Customer Message',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Phone Number',
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
                  DropdownSelectPayee(),
                  TextFieldWidget(customerMessageController),
                  TextFieldWidget(phoneNumberController),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 15, right: 10, top: 40, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Name',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Address L1',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Address L2 opt',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Address L3 opt',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'City, Country, Post code Country',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Container(
                height: 30,
                decoration: BoxDecoration(color: Colors.blue.withOpacity(.3)),
                width: MediaQuery.of(context).size.width * 1,
                child: Padding(
                  padding: EdgeInsets.only(top: 0, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SERVICE',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'DESCRIPTION',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'QTY',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'RATE',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'AMOUNT',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )),
            RowData('Sales', 'Rice', '10', '3', '30'),
            RowData('Sales', 'Sprite', '10', '3', '30'),
            RowData('Sales', 'Lamp', '10', '3', '30'),
            RowData('Sales', 'Organiser', '10', '3', '30'),
            Padding(
              padding: EdgeInsets.all(10),
              child: DottedLine(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notes',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'SUBTOTAL',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '€120',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        ' ',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black, spreadRadius: 1),
                      ],
                    ),
                    height: 60,
                    width: 120,
                  ),
                  Text(
                    'Tax',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            ' ',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black, spreadRadius: 1),
                          ],
                        ),
                        height: 40,
                        width: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '%',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 190, right: 20, top: 10, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Balance Due',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '€130',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar:BottomButtons(leftTitle: "Back",leftIcon: Icons.keyboard_arrow_left,onBack: (){},rightTitle:"Next",rightIcon: Icons.keyboard_arrow_right,onNext: (){}),
    );
  }

  Widget RowData(
    String txt1,
    String txt2,
    String txt3,
    String txt4,
    String txt5,
  ) {
    return Container(
        height: 30,
        //width: MediaQuery.of(context).size.width * 1,
        child: Padding(
          padding: EdgeInsets.only(top: 0, right: 30, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                txt1,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Text(
                txt2,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 0,
              ),
              Text(
                txt3,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Text(
                txt4,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Text(
                txt5,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ));
  }
}
