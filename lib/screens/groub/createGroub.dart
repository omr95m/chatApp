// ignore_for_file: file_names

import 'package:chat_applecation/widget/customForm.dart';
import 'package:flutter/material.dart';

class CreateGroub extends StatefulWidget {
  const CreateGroub({super.key});

  @override
  State<CreateGroub> createState() => _CreateGroubState();
}

class _CreateGroubState extends State<CreateGroub> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Row(
          children: [
            Text('Done'),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Create Groub'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                 const Stack(
                  clipBehavior: Clip.none,
                  children: [  CircleAvatar(radius: 40,),
                 Positioned(
                  bottom: -9,
                  right: 0,
                  child: Icon(Icons.add_a_photo))],),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: CustomFormF(
                      title: 'Groub name',
                      icon: Icons.person,
                      controller: controller,
                    
                    ),
                  )
                ],
              ),
            ),
           
            const Divider(),
              const SizedBox(height: 20,),
            const Row(
              children: [Text('Members'), Spacer(), Text('0')],
            ),
            Column(
              children: [
                CheckboxListTile(
                  checkboxShape: const CircleBorder(side: BorderSide()),
                  title: const Text('ahmad'),
                  value: true,
                  onChanged: (value) {
                    value;
                  },
                ),
                CheckboxListTile(
                  title: const Text('basel'),
                  value: false,
                  onChanged: (value) {
                    value;
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
