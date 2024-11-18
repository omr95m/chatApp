// import 'package:chat_applecation/screens/settings/qrScreen.dart';
// import 'package:chat_applecation/screens/settings/profile.dart';
import 'package:chat_applecation/screens/settings/profilScreen.dart';
import 'package:chat_applecation/screens/settings/qrScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 33,
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('Nmae'),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (covariant) {
                            return const QrCodeScreen();
                          }
                          ));
                        },
                        icon: const Icon(
                          Icons.qr_code,
                          size: 37,
                        )),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Card(
                  child: ListTile(
                title: const Text(
                  'Profile',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ProfileScreen()));
                    },
                    icon: const Icon(Icons.arrow_forward_ios)),
                leading: IconButton(
                    onPressed: () {}, icon: const Icon(Iconsax.user)),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Card(
                  child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Done'))
                          ],
                          content: SingleChildScrollView(
                            child: BlockPicker(
                              pickerColor: Colors.red,
                              onColorChanged: (value) {},
                            ),
                          ),
                        );
                      });
                },
                title: const Text('Them', style: TextStyle(fontSize: 20)),
                leading: IconButton(
                    onPressed: () {}, icon: const Icon(Iconsax.color_swatch)),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Card(
                  child: ListTile(
                title: const Text('Dark Mode', style: TextStyle(fontSize: 20)),
                trailing: Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Card(
                  child: ListTile(
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                },
                title: const Text('Sign out', style: TextStyle(fontSize: 20)),
                trailing:  const Icon(Iconsax.logout),
              )),
            )
          ],
        ),
      ),
    );
  }
}
