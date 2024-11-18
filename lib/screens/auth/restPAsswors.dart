// ignore_for_file: file_names

import 'package:chat_applecation/utils/colors.dart';
import 'package:chat_applecation/widget/customForm.dart';
import 'package:chat_applecation/widget/logoApp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RestPass extends StatelessWidget {
  const RestPass({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogoApp(),
              const SizedBox(
                height: 20,
              ),
              Text(
                ' Rest Password',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                ' Please Enter Your Email',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              CustomFormF(
             
                controller: emailController,
                icon: Icons.email,
                title: 'Email',
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      padding: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () async{
                    await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text)
                    .then((valu){
                      Navigator.pop(context); 
                      return ScaffoldMessenger.of(context).showSnackBar(
                                   const SnackBar(content:  Text('Email send cheeck your email')));}).onError((error,StackTrace){return ScaffoldMessenger.of(context).showSnackBar(
                                   const SnackBar(content: Text('Email Error')));});
                   
                  },
                  child: Center(
                    child: Text(
                      'send Email'.toUpperCase(),
                      style: const TextStyle(color: Colors.black),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
