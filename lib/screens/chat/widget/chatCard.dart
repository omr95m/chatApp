import 'package:flutter/material.dart';

class ChatMessageCard extends StatelessWidget {
  final int index;
  const ChatMessageCard({
    super.key,required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: index % 2 == 0
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight:
                        Radius.circular(index % 2 == 0 ? 0 : 16),
                    bottomLeft:
                        Radius.circular(index % 2 == 0 ? 16 : 0),
                    topLeft: const Radius.circular(20),
                    topRight: const Radius.circular(20))),
            color: 
            index % 2 == 0?
            Colors.purple:Colors.grey[850],
            child: Container(
                padding: const EdgeInsets.all(8),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.8),
                child:  const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hello i am abolona ',
                      style: TextStyle(fontSize: 18),
                    ),
                    // Row(mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     const Text('send at:00:3'),
                    //     const SizedBox(width: 7,),
                    //     index % 2 == 0?
    
                    //     const Icon(Icons.check_circle_outlined,color: Colors.blue,):const SizedBox()
                    //   ],
                    // )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
