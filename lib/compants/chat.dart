import 'package:flutter/material.dart';


import 'package:whatsapp/compants/castom.dart';
import 'package:whatsapp/compants/colors.dart';
class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  // List<ChatModel>chat=[
  //   ChatModel(name: "rty",
  //   isGroup: false,
  //   currentMessage: "hi",
  //   time: '4:00', icon: '', 
  //   status: '',
  //    )
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton(onPressed: () {},backgroundColor:appBarColor,
    child: Icon(Icons.chat,
    ),
    ),
    body:
     ListView(
      children: [
        castom(),
      ],
    ),
    );
  }
}