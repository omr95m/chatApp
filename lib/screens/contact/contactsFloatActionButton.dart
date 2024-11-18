// ignore_for_file: must_be_immutable

import 'package:chat_applecation/widget/customForm.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ContactsFloatactionButton extends StatelessWidget {
  TextEditingController controller=TextEditingController();
   ContactsFloatactionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showBottomSheet(
            context: context,
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Write your friend s email',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.scan))
                      ],
                    ),
                    CustomFormF(
                      title: ' Enter Email',
                    
                      icon: Icons.mail,
                      controller: controller,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        onPressed: () {},
                        child: const Center(
                            child: Text(
                          'Add Contact',
                          style:
                              TextStyle(color: Colors.black, fontSize: 18),
                        )))
                  ],
                ),
              );
            });
      },
      child: const Icon(
        Iconsax.add,
        color: Colors.white,
      ),
    );
  }
}

