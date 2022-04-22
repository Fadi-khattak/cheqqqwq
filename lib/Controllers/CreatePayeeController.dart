

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class CreatePayeeController extends GetxController
{
   var isLoading=false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }

  Future<void> createPayee({required String fname,required String middlename,required String lname,required String nickname,required String Dob,required String phoneNumber,required String email, required int accountNumber,required String sortCode,required String BankName,required String address1,required String address2,required String address3,required String city,required String country, required int postCode})
  async {
    try{
      isLoading.value=true;
      final ref=FirebaseDatabase.instance.ref("Payee");
      String id=FirebaseAuth.instance.currentUser!.uid;
      var payLoad={
        'fname':fname,
        'middlename':middlename,
        'lname':lname,
        'nickname':nickname,
        'dob':Dob,
        'phoneNumber':phoneNumber,
        'email':email,
        'accountNumber':accountNumber,
        'sortCode':sortCode,
        'bank':BankName,
        'address1':address1,
        'address2':address2,
        'address3':address3,
        'city':city,
        'country':country,
        'postCode':postCode,
        'ownerid':id
      };
      await ref.child(FirebaseAuth.instance.currentUser!.uid).set(payLoad);
      isLoading.value=false;
    }catch(e)
    {
      isLoading.value=false;
      Get.snackbar("Error", e.toString());
    }
  }
}