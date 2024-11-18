import 'package:chat_applecation/screens/groub/editeGroub.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Groubmembers extends StatefulWidget {
  const Groubmembers({super.key});

  @override
  State<Groubmembers> createState() => _GroubmembersState();
}

class _GroubmembersState extends State<Groubmembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Groub Members'),
      actions: [  IconButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context){return const EditeGroub();}));

      }, icon: const Icon(Iconsax.user_edit)),],),
      body: 
      Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(child:ListView.builder(
              itemCount: 5,
                    itemBuilder: (context, index) {
              return 
              SizedBox(height: 57,width: MediaQuery.of(context).size.width,
              child: ListTile(
                title: const Text('name'),
                subtitle: const Text('admin'),
                trailing: Row(mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Iconsax.trash)),
                    IconButton(onPressed: () {}, icon: const Icon(Iconsax.user_tick)),
                  ],
                ),
              ),);
                    }
            
            
            
            
            
            ))
           
          ],
        ),
      ),
    );
  }
}
