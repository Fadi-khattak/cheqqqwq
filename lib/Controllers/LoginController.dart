
import 'dart:convert';

import 'package:chequewallet/Model/UserModel.dart';
import 'package:chequewallet/Views/Dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

var userModel=UserModel(fname: "", lname: "", dob: "", transpass: "", email: "").obs;
class LoginController extends GetxController
{
  var isLoading=false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }
  Future Login(String email,String pass)async
  {
    try{
      isLoading.value=true;
     UserCredential uc= await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass).timeout(Duration(seconds: 15),onTimeout: (){
        throw "connection timeout";
      });
      if(uc.user!=null)
        {
          await getUserData();
          isLoading.value=false;
          Get.offAll(()=>Dashboard());
        }
    }catch(e)
    {
      isLoading.value=false;
      Get.snackbar("Error", e.toString());
    }
  }

  Future getUserData()async
  {
    try{
      final ref=FirebaseDatabase.instance.ref("users");
      var data=await ref.child(FirebaseAuth.instance.currentUser!.uid).once();
      userModel.value=userModelFromJson(jsonEncode(data.snapshot.value));
      print(jsonEncode(data.snapshot.value));

    }catch(e)
    {
      isLoading.value=false;
      Get.snackbar("Error", e.toString());
    }
  }
}