import 'package:chat_applecation/firebase_options.dart';
import 'package:chat_applecation/screens/auth/login.dart';
import 'package:chat_applecation/widget/buttonNavi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green,brightness: Brightness.dark)),
    
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white,brightness: Brightness.light),

        useMaterial3: false,
      ),
      home: StreamBuilder(stream: FirebaseAuth.instance.userChanges(),
       builder: (context,snapshot)
      { 
         if(snapshot.hasData){
          return const LayOutApp();
         }
         else {
          return const Login();
         }
       }),
    );
  }
}

