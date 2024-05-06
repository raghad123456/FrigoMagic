import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:frigomagic/screens/Home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      // Login successful, show success snackbar
      Get.snackbar(
        'Success',
        'Login successful',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } on FirebaseAuthException catch (e) {
      // Login failed, show error snackbar
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        Get.snackbar(
          'Error',
          'Invalid email or password',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        Get.snackbar(
          'Error',
          e.message ?? 'An error occurred while logging in',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      // Generic error, show error snackbar
      Get.snackbar(
        'Error',
        'An error occurred while logging in',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(200, 151, 141, 20) ,
        ),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/frigo logo.png'), // Adjust the path accordingly
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Frigo Magic app',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  style: TextStyle(color: Colors.teal),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  obscureText: true,
                  style: TextStyle(color: Colors.teal),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: signIn,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor:Color.fromRGBO(70, 29, 20, 20),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () async {
                    // Show forget password dialog
                    String? email = await showDialog<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Reset Password'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Enter your email to receive a password reset link:'),
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                style: TextStyle(color: Colors.teal),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () async {
                                // Get the email entered by the user
                                String email = emailcontroller.text.trim();

                                // Send password reset email
                                try {
                                  await FirebaseAuth.instance.sendPasswordResetEmail(
                                    email: email,
                                  );
                                  // Show success message
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Password reset link sent to $email. Please check your inbox.',
                                      ),
                                      backgroundColor: Colors.green,
                                    ),
                                  );
                                  // Close the dialog
                                  Navigator.pop(context, email);
                                } catch (error) {
                                  // Show error message
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Error sending reset link: $error'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }
                              },
                              child: Text('Send'),
                            ),
                          ],
                        );
                      },
                    );

                    // After dialog is closed, check if email was provided
                    if (email != null) {
                      // Navigate back to login after 3 seconds
                      await Future.delayed(Duration(seconds: 3));
                      Get.back();
                    }
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Navigate to sign up page
                    Get.to(SignUpPage());
                  },
                  child: Text(
                    "Don't have an account? Sign up now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  void signUp() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
      // Navigate to HomeScreen after successful sign up
      Get.to(HomeScreen()); // Replace current screen with HomeScreen
      Get.snackbar(
        'Success',
        'Sign up successful',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      // Display error message using Get.snackbar
      Get.snackbar(
        'Error',
        e.message ?? 'An error occurred while signing up',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } catch (e) {
      print(e);
      // Display generic error message using Get.snackbar
      Get.snackbar(
        'Error',
        'An error occurred while signing up',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(200, 151, 141, 20) ,
        ),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/frigo logo.png'), // Adjust the path accordingly
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Frigo Magic app',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  style: TextStyle(color: Colors.teal),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  obscureText: true,
                  style: TextStyle(color: Colors.teal),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  style: TextStyle(color: Colors.teal),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: signUp,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(70, 29, 20, 20),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Navigate back to login page
                    Get.back();
                  },
                  child: Text(
                    "Already have an account? Login now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
