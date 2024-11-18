import 'package:chat_applecation/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireAuth {
  static FirebaseAuth auth = FirebaseAuth.instance;
  static FirebaseFirestore firebasefirestore = FirebaseFirestore.instance;
  static User user = auth.currentUser!;
  static Future createUser() async {
    ChatUser chatUser = ChatUser(
        id: user.uid,
        name: user.displayName ?? '',
        email: user.email ?? '',
        about: "Hi i'm in omar app",
        image: '',
        createdAt: DateTime.now().toString(),
        lastActivated: DateTime.now().toString(),
        pushToken: '',
        online: false);
    await firebasefirestore
        .collection('users')
        .doc(user.uid)
        .set(chatUser.toJson());
  }
}
