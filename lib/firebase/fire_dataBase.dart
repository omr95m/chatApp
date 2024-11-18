import 'package:chat_applecation/model/room_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireData {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final String myUid = FirebaseAuth.instance.currentUser!.uid;

Future  createRoom(String email) async {
    QuerySnapshot userEmail = await firestore
        .collection('users')
        .where('email', isEqualTo: email)
        .get();
    if (userEmail.docs.isNotEmpty) {
       String userId = userEmail.docs.first.id;
    List<String> members = [myUid, userId]..sort((a, b) => a.compareTo(b));
    QuerySnapshot roomExest = await firestore
        .collection('rooms')
        .where('members', isEqualTo: members)
        .get();
        if(roomExest.docs.isEmpty){ ChatRoomD chatRoomD = ChatRoomD(
      id: members.toString(),
      createdAt: DateTime.now().toString(),
      lastMessage: '',
      lastMessageTime: DateTime.now().toString(),
      members: members,
    );
    await firestore
        .collection('rooms')
        .doc(members.toString())
        .set(chatRoomD.toJson());}
     
    }
   
   
  }
}
