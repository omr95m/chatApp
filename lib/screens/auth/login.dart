// ignore_for_file: non_constant_identifier_names

import 'package:chat_applecation/firebase/fire_auth.dart';
import 'package:chat_applecation/screens/auth/restPAsswors.dart';
import 'package:chat_applecation/utils/colors.dart';
import 'package:chat_applecation/widget/customForm.dart';
import 'package:chat_applecation/widget/logoApp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emcont = TextEditingController();
    TextEditingController passcon = TextEditingController();
    GlobalKey<FormState> globalkey = GlobalKey();
     @override
   void dispose() {
      emcont.dispose();
      passcon.dispose();
      super.dispose();
   }
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogoApp(),
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'Material Chat App with omar',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Form(
                key: globalkey,
                child: Column(
                  children: [
                    CustomFormF(
                      controller: emcont,
                      icon: Icons.email,
                      title: 'Email',
                    ),
                    CustomFormF(
                      controller: passcon,
                      icon: Icons.key,
                      title: 'Password',
                      isbass: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const RestPass(),
                            ));
                          },
                          child: const Text(
                            'forgetPasswors?',
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
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
                        onPressed: () async {
                          if (globalkey.currentState!.validate()) {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: emcont.text, password: passcon.text)
                                .then((value) {
                              return FireAuth.createUser();
                              // ignore: void_checks
                            }).onError((error, StackTrace) {
                              return ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Sign In Done')));
                            });
                          }
                        },
                        child: Center(
                          child: Text(
                            'login'.toUpperCase(),
                            style: const TextStyle(color: Colors.black),
                          ),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    OutlinedButton(
                        style: ElevatedButton.styleFrom(
                            // backgroundColor: kPrimaryColor,
                            padding: const EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () async {
                          // Navigator.pushAndRemoveUntil(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const SetupProfile(),
                          //   ),
                          //   (route) => false,
                          // );
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emcont.text, password: passcon.text)
                              .then((value) {
                            // ignore: avoid_print
                            return print('Done');
                            // ignore: void_checks, avoid_types_as_parameter_names
                          }).onError((error, StackTrace) {
                            return ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('erroe')));
                          });
                        },
                        child: Center(
                          child: Text(
                            'creat acount'.toUpperCase(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
