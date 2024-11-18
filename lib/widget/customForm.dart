// ignore: file_names
import 'package:flutter/material.dart';

class CustomFormF extends StatefulWidget {
  final String title;
  final IconData icon;
  final TextEditingController controller;
  final bool isbass;
 
  const CustomFormF({
    super.key,
    required this.title,
    required this.icon,
    required this.controller,
    this.isbass = false,
   
  });

  @override
  State<CustomFormF> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomFormF> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
       
        
        validator: (value) =>value!.isEmpty?'required':null,
        obscureText: widget.isbass ? obscure : false,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget. title,
            suffixIcon: widget.isbass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                    icon: const Icon(Icons.remove_red_eye))
                : const SizedBox(),
            prefixIcon: Icon(widget.icon),
            // labelText: widget.title,
            border:
             
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
