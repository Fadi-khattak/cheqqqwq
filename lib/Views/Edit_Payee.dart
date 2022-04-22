import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets/DropdownButtonBankAccount.dart';
import '../Widgets/bottom_buttons.dart';
import '../Widgets/box_Widgit.dart';
import 'Create_Cheque.dart';
import 'Email_Sent.dart';

class EditPayee extends StatelessWidget {
  String dropdownvalue = 'Lloyds Bank';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Edit Payee'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 30, bottom: 10),
              child: Text(
                'New Payee',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 20, bottom: 30),
              child: Text(
                'Personal Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 40, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'First Name*',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Middle Name',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Last Name*',
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
                  BoxWidgit('abc'),
                  BoxWidgit('def'),
                  BoxWidgit('xyz'),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nick Name',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Date of Birth*',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Phone Number',
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
                  BoxWidgit('xzyt'),
                  BoxWidgit('02/05/1999'),
                  BoxWidgit('072312445'),
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
              padding: EdgeInsets.only(left: 10, top: 2, bottom: 0),
              child: Text(
                'Email*',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
            TextFieldWidget('abc@gmail.com'),
            Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 40, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Account Number',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Sort Code',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Select Bank*',
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
                  BoxWidgit('12345678'),
                  BoxWidgit('00-11-22'),
                  DropdownButtonBankAccount(dropdownvalue: dropdownvalue,),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 30, bottom: 10),
              child: Text(
                'Address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 2, bottom: 0),
              child: Text(
                'Address Line 1*',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
            TextFieldWidget(''),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 2, bottom: 0),
              child: Row(
                children: [
                  Text(
                    'Address Line 2*',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Optional',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
            TextFieldWidget(''),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 2, bottom: 0),
              child: Row(
                children: [
                  Text(
                    'Address Line 3*',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Optional',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
            TextFieldWidget(''),
            Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 60, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'City',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Country',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  Text(
                    'Postcode',
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
                  BoxWidgit(''),
                  BoxWidgit(''),
                  BoxWidgit(''),
                ],
              ),
            ),
            BottomButtons(
                Icons.arrow_back_ios,
                'Back',
                () {
                  Get.to(() => EmailSent());
                },
                'Edit',
                Icons.arrow_forward_ios,
                () {
                  Get.to(() => CreateCheque());
                },
                100),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget TextFieldWidget(String _txt) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Container(
          height: 25,
          // width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 1.0),
          ),
          child: Center(
            child: Text(_txt),
          )),
    );
  }
}
