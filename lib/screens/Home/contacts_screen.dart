import 'package:chat_applecation/screens/contact/contactCard.dart';
import 'package:chat_applecation/screens/contact/contactsFloatActionButton.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ContactsScreen> {
  bool search = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ContactsFloatactionButton(),
      appBar: AppBar(
        actions: [
          search
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      search = false;
                    });
                  },
                  icon: const Icon(Iconsax.close_circle))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      search = true;
                    });
                  },
                  icon: const Icon(Icons.search))
        ],
        centerTitle: false,
        title: search
            ? Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: 'search for contact',

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                  ))
                ],
              )
            : const Text('contacts'),
      ),
      body: const ContactCard(),
    );
  }
}
