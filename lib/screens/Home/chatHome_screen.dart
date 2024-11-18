import 'package:chat_applecation/screens/chat/chatFloatActionButton.dart';
import 'package:chat_applecation/widget/coustomChatCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
       ChatFloatActionButton(),
      appBar: AppBar(centerTitle: false,
        title: const Text('chat'),
      ),
      body: Expanded(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('rooms').
          where('members',arrayContains: FirebaseAuth.instance.currentUser!.uid).
          snapshots(),
          builder: (context, snapshot) {
            if(snapshot.hasData){ return ListView.builder(

                itemCount: snapshot.data!.docs.length,
                 itemBuilder: (context, index) => 
                 const ChatCard());}
                 else{return Center(child: CircularProgressIndicator(),);}
           
          }
        ),
      ),
    );
  }
}
  