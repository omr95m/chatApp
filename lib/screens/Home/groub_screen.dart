import 'package:chat_applecation/screens/groub/createGroub.dart';
import 'package:chat_applecation/screens/groub/groubCardListtile.dart';
import 'package:flutter/material.dart';

class GroubScreen extends StatefulWidget {
  const GroubScreen({super.key});

  @override
  State<GroubScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<GroubScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return  const CreateGroub();
          }));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('groub'),
      ),
      body: const GroubCardListtile(),
    );
  }
}
