// ignore_for_file: file_names

import 'package:chat_applecation/screens/auth/login.dart';
import 'package:chat_applecation/utils/colors.dart';
import 'package:chat_applecation/widget/customForm.dart';
import 'package:flutter/material.dart';

class SetupProfile extends StatelessWidget {
  const SetupProfile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController creatName = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                  (route) => false,
                );
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              const SizedBox(
                height: 20,
              ),
              Text(
                ' WELCOME',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                ' Please Enter Your Name',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              CustomFormF(
               
                controller: creatName,
                icon: Icons.person,
                title: 'Name',
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
                  onPressed: () {
                  },
                  child: Center(
                    child: Text(
                      'CONTENU'.toUpperCase(),
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
