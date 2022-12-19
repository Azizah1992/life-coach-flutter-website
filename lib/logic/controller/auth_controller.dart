import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/routes.dart';

class AuthController extends GetxController{

  
  var displayUserName = ''.obs; ///
  var displayUserPhoto = ''.obs; ////
  var displayUserEmail = ''.obs; ///
  // var displayDescription = ''.obs;


    var isSignedIn = false;
  final GetStorage authBox = GetStorage();

  FirebaseAuth auth = FirebaseAuth.instance;




////
  void signOut() async {
    try {
      await auth.signOut();
      displayUserName.value = "";
      displayUserPhoto.value = '';
      displayUserEmail.value = '';
      // displayDescription.value = '';
      isSignedIn = false;
      authBox.remove("auth");
      update();
      // Get.offNamed(Routes.loginScreen);
    } catch (e) {
      Get.snackbar("Error!", e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.grey,
          colorText: Colors.white);
    }
  }



///////
  void signUpUsingFirebase({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        displayUserName.value = name;
        auth.currentUser!.updateDisplayName(name);
        displayUserEmail.value = email;
      });

      DocumentReference doc =
          FirebaseFirestore.instance.collection("users").doc(email);

      doc.set({
        "email": email,
        "password": password,
        "displayName": name,
        "image": "",
        "description": "",
      });

      update();
   Get.offNamed(Routes.profile);
    } on FirebaseAuthException catch (e) {
      String title = e.code.replaceAll(RegExp('-'), ' ').capitalize!;
      String message = '';

      if (e.code == 'email-already-in-use') {
        message = 'Email already used';
      } else {
        message = e.message.toString();
      }

      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red[400],
        colorText: Colors.white,
      );
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red[400],
        colorText: Colors.white,
      );
    }
  }


  loginUsingFierbase({
    required String email,
    required String password,
  }) async {
    try {
      print("in auth $email");
      print("in auth controller var $displayUserEmail");
      print("in auth controller var $displayUserName");
      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('users')
            .doc(displayUserEmail.value)
            .get();
        Map<String, dynamic> docData = userDoc.data() as Map<String, dynamic>;
        displayUserName.value = docData['displayName'];
        displayUserEmail.value = docData['email'];
        // displayDescription.value = docData['description'];
        displayUserPhoto.value = docData['image'];
      });

      isSignedIn = true;
      authBox.write("auth", isSignedIn);
      update();
      Get.offNamed(Routes.profile);
      //getEmailDoc();
    } on FirebaseAuthException catch (error) {
      String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
      String message = '';
      if (error.code == 'Wrong E-mail') {
        message = 'Wrong E-mail';
      } else if (error.code == 'wrong-password') {
        message = 'Wrong password ';
      } else {
        message = error.message.toString();
      }
      Get.snackbar(title, message,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
      );
    }
  }







}