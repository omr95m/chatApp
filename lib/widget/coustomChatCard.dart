import 'package:chat_applecation/screens/chat/chat_scrRoom.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
          child: 
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatRoom()));
            },
            leading: const CircleAvatar(),
            title: const Text('Name'),
            subtitle: const Text('last message'),
            trailing: const Badge(
              largeSize: 35,
              padding:  EdgeInsets.symmetric(horizontal: 15),
              label: Text('3'),
            ),
          ),
        );
  }
}
