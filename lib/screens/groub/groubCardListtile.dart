import 'package:chat_applecation/screens/groub/chatRoomGroub.dart';
import 'package:flutter/material.dart';

class GroubCardListtile extends StatelessWidget {
  const GroubCardListtile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
          child: 
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatRoomGroub()));
            },
            leading: const CircleAvatar(child: Text('G'),),
            title: const Text('Groub'),
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
