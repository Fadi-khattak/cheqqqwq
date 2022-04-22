

import 'package:chequewallet/Controllers/CreatePayeeController.dart';
import 'package:chequewallet/Views/LoadingScreen.dart';
import 'package:chequewallet/Views/View_Payee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets/DropdownButtonBankAccount.dart';
import '../Widgets/BottomButtons.dart';
import '../Widgets/textfield_widget.dart';

import 'Email_Sent.dart';

import 'Create_Cheque.dart';

class CreatePayee extends StatelessWidget {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController sortCodeController = TextEditingController();
  TextEditingController address1Controller = TextEditingController();
  TextEditingController address2Controller = TextEditingController();
  TextEditingController address3Controller = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController postCodeController = TextEditingController();
  String dropdownvalue = 'Lloyds Bank';
  var _c=Get.put(CreatePayeeController());

  @override
  Widget build(BuildContext context) {
    return GetX<CreatePayeeController>(
      builder: (_) {
        return _.isLoading.isTrue ? LoadingScreen() : Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text('Create Payee'),
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
                      TextFieldWidget(firstNameController),
                      TextFieldWidget(middleNameController),
                      TextFieldWidget(lastNameController),
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
                      TextFieldWidget(nickNameController),
                      TextFieldWidget(dobController),
                      TextFieldWidget(phoneNumberController),
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
                Padding(padding: EdgeInsets.all(10),
                child: Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width*1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1.0),
                    ),
                    child: Center(
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                        ),
                      ),
                    )),),
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
                      TextFieldWidget(accountNumberController),
                      TextFieldWidget(sortCodeController),
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
                Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width*1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1.0),
                      ),
                      child: Center(
                        child: TextField(
                          controller: address1Controller,
                          decoration: InputDecoration(
                          ),
                        ),
                      )),),
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
                Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width*1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1.0),
                      ),
                      child: Center(
                        child: TextField(
                          controller: address2Controller,
                          decoration: InputDecoration(
                          ),
                        ),
                      )),),
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
                Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width*1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1.0),
                      ),
                      child: Center(
                        child: TextField(
                          controller: address3Controller,
                          decoration: InputDecoration(
                          ),
                        ),
                      )),),
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
                      TextFieldWidget(cityController),
                      TextFieldWidget(countryController),
                      TextFieldWidget(postCodeController),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar:BottomButtons(leftTitle: "Back",leftIcon: Icons.keyboard_arrow_left,onBack: (){},rightTitle:"Create",rightIcon: Icons.keyboard_arrow_right,onNext: (){
           // _.createPayee(
           //     fname: firstNameController.text,
           //     middlename: middleNameController.text,
           //     lname: lastNameController.text,
           //     nickname: nickNameController.text,
           //     Dob: dobController.text,
           //     phoneNumber: phoneNumberController.text,
           //     email: emailController.text,
           //     accountNumber: int.parse(accountNumberController.text),
           //     sortCode: sortCodeController.text,
           //     BankName:dropdownvalue ,
           //     address1: address1Controller.text,
           //     address2: address2Controller.text,
           //     address3: address3Controller.text,
           //     city: cityController.text,
           //     country: countryController.text,
           //     postCode: int.parse(postCodeController.text)
           // );
            print(dropdownvalue);
          }),
        );
      }
    );
  }

  // Widget TextFieldWidget(String _txt) {
  //   return Padding(
  //     padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
  //     child: Container(
  //         height: 25,
  //         // width: MediaQuery.of(context).size.width * 1,
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           border: Border.all(color: Colors.black, width: 1.0),
  //         ),
  //         child: Center(
  //           child: Text(_txt),
  //         )),
  //   );
  // }
}
