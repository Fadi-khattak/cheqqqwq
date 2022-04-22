
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets/BottomButtons.dart';
import '../Widgets/dropdown_select_payee.dart';
import '../Widgets/textfield_widget.dart';
import 'Cheque_Created.dart';
import 'Email_Sent.dart';

class CreateInvoice extends StatefulWidget {
  const CreateInvoice({Key? key}) : super(key: key);

  @override
  State<CreateInvoice> createState() => _CreateInvoiceState();
}

class _CreateInvoiceState extends State<CreateInvoice> {

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
        title: Text('Create Invoice'),
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
                  padding: EdgeInsets.only(top: 0, right: 10, left: 10),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0 ITEM || SUBTOTAL €0.00',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                    ],
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.delete,
                  size: 30,
                ),
                Column(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          ' SERVICE',
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
                      height: 30,
                      width: 160,
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          ' DESCRIPTION',
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
                      height: 30,
                      width: 160,
                    ),
                  ],
                ),
                SizedBox(
                  width: 0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' 0.0',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0.0',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        '0.0 ',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  height: 60,
                  width: 140,
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Icon(
                Icons.add,
                size: 40,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:BottomButtons(leftTitle: "Back",leftIcon: Icons.keyboard_arrow_left,onBack: (){},rightTitle:"Next",rightIcon: Icons.keyboard_arrow_right,onNext: (){}),
    );
  }
}
