// ignore_for_file: file_names

import 'package:chat_applecation/screens/Home/chatHome_screen.dart';
import 'package:chat_applecation/screens/Home/contacts_screen.dart';
import 'package:chat_applecation/screens/Home/groub_screen.dart';
import 'package:chat_applecation/screens/Home/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LayOutApp extends StatefulWidget {
  const LayOutApp({super.key});

  @override
  State<LayOutApp> createState() => __LayOutAppState();
}

class __LayOutAppState extends State<LayOutApp> {
  int curentindex = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 52,
        elevation: 0,
        selectedIndex: curentindex,
        onDestinationSelected: (value) {
          setState(() {
            curentindex = value;
            controller.jumpToPage(value);
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.message), label: 'chat'),
          NavigationDestination(icon: Icon(Iconsax.messages), label: 'groub'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'contacte'),
          NavigationDestination(icon: Icon(Iconsax.setting), label: 'settings'),
        ],
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            curentindex = value;
          });
        },
        children: const [
          ChatScreen(),
          GroubScreen(),
          ContactsScreen(),
          SettingsScreen(),
        ],
      ),
    );
  }
}
