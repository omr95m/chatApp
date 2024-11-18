import 'package:chat_applecation/screens/groub/groubMembers.dart';
import 'package:chat_applecation/screens/groub/messageCardGroub.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatRoomGroub extends StatelessWidget {
  const ChatRoomGroub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Groubmembers();
              }));
            },
            icon: const Icon(Iconsax.user),
          ),
        ],
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('omer'),
            Text(
              'last seen 12:7',
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              // child:
              //  Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       '👋',
              //       style: TextStyle(fontSize: 60),
              //     ),
              //     Text('Say Hey')
              //   ],
              // ),
              child: ListView.builder(
                  reverse: true,
                  itemCount: 8,
                  itemBuilder: (context, index) =>
                      MessageCardGroub(index: index))),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 7),
            child: Row(
              children: [
                Expanded(
                    child: Card(
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(27)),
                        hintText: ' message',
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Iconsax.camera,
                              color: Colors.blue,
                            )),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Iconsax.gallery,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Iconsax.microphone))
                          ],
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27))),
                  ),
                )),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(30)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.telegram,
                        size: 27,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
