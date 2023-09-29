import 'package:flutter/material.dart';


import '../compants/colors.dart';

class Indivdualpage extends StatefulWidget {
   Indivdualpage({super.key,});

  @override
  State<Indivdualpage> createState() => _IndivdualpageState();
}

class _IndivdualpageState extends State<Indivdualpage> {
  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(
      appBar: AppBar(
         backgroundColor:appBarColor,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
              )
            ],
          ),
        ),
        title: Column(
          children: [
            Text("dev",style: TextStyle(
              fontSize: 19,
            ),),
            
          ],
        ),
        actions:[IconButton(onPressed: (){}, icon:Icon(Icons.video_call)),
        IconButton(onPressed: (){}, icon:Icon(Icons.call)),
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
        ,]
      ),
      body:
       Container(color:Colors.blueAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Card(
                      margin: EdgeInsets.only(left: 2,right: 2,bottom: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                       decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "mesage",
                        prefixIcon: IconButton(onPressed: () {  }, icon:Icon(Icons.emoji_emotions)),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed: (){}, icon:Icon(Icons.attach_file))
                            ,IconButton(onPressed:(){}, icon: Icon(Icons.camera_alt))
                          ],
                        ),
                        contentPadding: EdgeInsets.all(5),
                       ),
                      ),
                      ) ,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8,right:2 ,left: 2),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: appBarColor,
                      child: IconButton(onPressed: (){}, icon:Icon(Icons.mic,color: Colors.white,)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}