import 'package:flutter/material.dart';

class MessageCardGroub extends StatelessWidget {
  final int index;
  const MessageCardGroub({
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
          index%2==0?IconButton(onPressed: (){}, icon: const Icon(Icons.mode_edit_outline_outlined,size: 19,)):const SizedBox(),
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
                child:   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   index%2!=0? const Text('Name'):const SizedBox(),
                    index%2==0? const Text(
                      'Hello i am abolona ',
                      style: TextStyle(fontSize: 18),
                    ): const Text(
                      'Groub messages ',
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
