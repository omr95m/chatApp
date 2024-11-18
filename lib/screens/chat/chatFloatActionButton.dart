// ignore_for_file: must_be_immutable, file_names

import 'package:chat_applecation/firebase/fire_dataBase.dart';
import 'package:chat_applecation/widget/customForm.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';



class ChatFloatActionButton extends StatefulWidget {

   ChatFloatActionButton({super.key});

  @override
  State<ChatFloatActionButton> createState() => _ChatFloatActionButtonState();
}

class _ChatFloatActionButtonState extends State<ChatFloatActionButton> {
  TextEditingController mycontroller = TextEditingController();

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
                      controller: mycontroller,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        onPressed: () {
                         if(mycontroller.text.isNotEmpty){
                           FireData().createRoom(mycontroller.text).then((valu){setState(() {
                           mycontroller.text='';
                           Navigator.pop(context);  
                           });});
                         }
                        },
                        child: const Center(
                            child: Text(
                          'Creat chat',
                          style:
                              TextStyle(color: Colors.black, fontSize: 18),
                        )))
                  ],
                ),
              );
            });
      },
      child: const Icon(
        Iconsax.message,
        color: Colors.white,
      ),
    );

  }
}