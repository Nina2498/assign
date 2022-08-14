// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp( assign1());


}
class assign1 extends StatefulWidget {
  assign1({Key? key}) : super(key: key);

  @override
  State<assign1> createState() => _assign1State();
}

class _assign1State extends State<assign1> {

  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
      body: Column(
        
        
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(50, 30, 50, 20) ,
             
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Colors.black,
              child:CircleAvatar(
                radius:70 ,
                backgroundImage: 
              AssetImage('assets/img/img1.jpg'),
              ),
            
            ),
          
            ),
          ],
          
        ),

        Row (
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  
             "FULL NAME" ,
             textAlign: TextAlign.center,
             ),
              ],
            ),
        Container(
          margin: EdgeInsets.all(20),
        
        child: 
      
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),

        ),
          const SizedBox(
            height: 20,
          ),
            GestureDetector(
            onTap: () async{
              const url='https://www.linkedin.com/feed/';
              if (await canLaunch(url)){
                await launch(url);
              }else {
                throw'Could not launch $url';
              }



            },
            child: Container(
              color: Color.fromARGB(171, 160, 154, 216),
              width: 370,
              height: 50,
              child: const ListTile(
                leading: FaIcon(FontAwesomeIcons.linkedin),
                title: Text("LinkedIn Profile"),
              )
            ),
          ),
          
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
             onTap: () async{
               const url = 'https://www.facebook.com/';
                  if(await canLaunch(url)){
                    await launch(url);
                  }else {
                    throw 'Could not launch $url';
                  }
                        
             },
            child: Container(
              color: Color.fromARGB(171, 112, 174, 237),
              width: 370,
              height: 50,
              child: const ListTile(
                leading: FaIcon(FontAwesomeIcons.facebook),
                title: Text("Facebook Profile"),
              )
            ),

          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
             onTap: () async{
               const url = 'https://www.facebook.com/';
                  if(await canLaunch(url)){
                    await launch(url);
                  }else {
                    throw 'Could not launch $url';
                  }
             },
            child: Container(
              color: Color.fromARGB(171, 203, 154, 216),
              width: 370,
              height: 50,
              child: const ListTile(
                leading: FaIcon(FontAwesomeIcons.instagram),
                title: Text("Instagram Profile"),
              )
            ),

          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
             onTap: () async{
               const url = 'https://www.facebook.com/';
                  if(await canLaunch(url)){
                    await launch(url);
                  }else {
                    throw 'Could not launch $url';
                  }
             },
            child: Container(
              color: Color.fromARGB(171, 210, 216, 154),
              width: 370,
              height: 50,
              child: const ListTile(
                leading: FaIcon(FontAwesomeIcons.google),
                title: Text("My Website"),
              )
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){}
                ,
                icon: FaIcon(FontAwesomeIcons.phone),
                iconSize: 40,
                color: Color.fromARGB(255, 13, 185, 21),
                padding: const EdgeInsets.all(30),
                ),
              IconButton(onPressed: (){},
              icon:FaIcon(FontAwesomeIcons.envelope),
              iconSize: 45,
              color: Color.fromARGB(255, 65, 69, 65),
              padding: const EdgeInsets.all(30),
             

          ),
          IconButton(onPressed: (){},
          icon:FaIcon(FontAwesomeIcons.solidMessage),
          iconSize: 40,
           color: Color.fromARGB(255, 13, 185, 21),
           padding: const EdgeInsets.all(30),
          ),
            ]
            
          )
      ]),
      ),
    );
  }
}



