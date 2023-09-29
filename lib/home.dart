import 'package:flutter/material.dart';

import 'compants/chat.dart';
import 'compants/colors.dart';

class home extends StatelessWidget {
  const home({super.key, required onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
// theme: ThemeData(primarySwatch: Colors.green),
home: DefaultTabController(
  length:4 ,
  child:   Scaffold(
  
    appBar:AppBar(
  
      backgroundColor:appBarColor,
  
      elevation: 3,
  
      title: const Text("what"),
  
       actions: [
  
         IconButton(onPressed: () {  }, icon: Icon(Icons.camera_alt_outlined),
  
        ),
  
         IconButton(onPressed:() {  }, icon: Icon(Icons.search),
  
        ),
       PopupMenuButton<String>(
        onSelected: (value) {
          print(value);
        },
        itemBuilder:(BuildContext context) {
         return[
          PopupMenuItem(child: Text("new group"),value: "new group",),
          PopupMenuItem(child: Text("new broadcast"),value: "new broadcast",),
          PopupMenuItem(child: Text("whatsapp web"),value: "wahtsapp web",),
          PopupMenuItem(child: Text("start mesage"),value: "start mesage",),
          PopupMenuItem(child: Text("settings"),value: "settings",),

         ];
       }, )
  
       ],
  
     bottom: const TabBar(
      indicatorColor:Color.fromRGBO(0, 91, 2, 1),
      indicatorWeight: 4,
      labelColor: Color.fromRGBO(251, 252, 251, 1),
      unselectedLabelColor: Color.fromARGB(255, 219, 184, 184),
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      tabs: [
        Tab(icon: Icon(Icons.camera_alt)),
      Tab(
  
          text: "chat",
  
        ),
        Tab(
  
         text: "status",
  
        ),
  
        Tab(
  
          text: "call",
  
        ),
  
        ]),
  
        
  
    )
  
    // ,drawer: Drawer(
  
    //   child: Container(
  
    //     color: Colors.green[800],
  
    //     child: ListView(
  
  
  
    //     ),
  
    //     ),
  
    // ),
  
   , body: Column(
  
      children: [
  
      
  
        Expanded(
          child: TabBarView(children: 
          [
            Container(
              color: Color.fromARGB(255, 209, 55, 17),
            
            ),
            Chatpage(),
            Container(
              color: Color.fromARGB(255, 12, 92, 129),
            
            )
            ],
            ),
        ),
  
        
  
      ],
  
    ),
  
  
  
  ),
),

    );
  }
} 