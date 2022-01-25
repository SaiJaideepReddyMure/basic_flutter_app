import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(
    home :  NinjaCard(),
  ));
 class NinjaCard extends StatefulWidget {

   @override
   _NinjaCardState createState() => _NinjaCardState();
 }

 class _NinjaCardState extends State<NinjaCard> {
   createDialog(BuildContext context,String s,String mail,String name)
   {     final String image = s;
   final String m = mail;
   final String n = name;
     return showDialog(context: context, builder: (context)
     {
       return AlertDialog(
         backgroundColor: Colors.black26,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30),
         ),
         title: Column(

           children:<Widget> [
             BackdropFilter(
               filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
               child: Container(
                 color: Colors.transparent,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 90.0, ),
               child: ListTile(

                 leading:CircleAvatar(
                  backgroundImage :NetworkImage('$image'),),
                 title: Text("$n",
                   style: TextStyle(
                     color: Colors.white,
                   ),),
                 subtitle: Text("$m",
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 ),

               ),

             ),
             Padding(
               padding: const EdgeInsets.only(left:1.0),
               child: Expanded(
                 child: new Container(

                     child: Divider(
                       color: Colors.black,
                       height: 10,
                     )),

               ),
             ),


             Padding(
               padding: const EdgeInsets.only(right: 3.0),
                 child: Row(

                   children: [


                     IconButton(onPressed : (
                         ) => {

                     }, icon: Icon(FontAwesomeIcons.smile),
                       color: Colors.white,),
                     Text('Status',
                      style: TextStyle(
                      color: Colors.white,
                         ),),
                   ],
                 ),



             ),



             Padding(
               padding: const EdgeInsets.only(right: 3.0),

               child: Row(
                 children: [


                   IconButton(onPressed : (
                       ) => {

                   }, icon: Icon(FontAwesomeIcons.bellSlash),
                     color: Colors.white,),
                   Text('Snooze notification',
                   style: TextStyle(
                    color: Colors.white,
                     ),
                   ),


                 ],
               ),
               ),
             Padding(
               padding: const EdgeInsets.only(left:1.0),
               child: Expanded(
                 child: new Container(

                     child: Divider(
                       color: Colors.black,
                       height: 10,
                     )),

               ),
             ),



             Padding(
               padding: const EdgeInsets.only(right: 3.0),
               child: Row(
                 children: [

                   IconButton(onPressed : (
                       ) => {

                   }, icon: Icon(Icons.attach_email_outlined),
                     color: Colors.white,),
                   Text('Invitation',
                   style: TextStyle(
                   color: Colors.white,
                    ),),
                 ],
               ),



             ),
             Padding(
               padding: const EdgeInsets.only(right: 3.0),
               child: Row(
                 children: [

                   IconButton(onPressed : (
                       ) => {

                   }, icon: Icon(Icons.archive_outlined,
                     color: Colors.white,
                   ),
                   color: Colors.white,),
                   Text('Archived',
                   style: TextStyle(
                     color: Colors.white,
                   ),),

                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left:1.0),
               child: Expanded(
                 child: new Container(

                     child: Divider(
                       color: Colors.black,
                       height: 10,
                     )),

               ),
             ),

             Padding(
               padding: const EdgeInsets.only(right: 3.0),
               child: Row(
                 children: [

                   IconButton(onPressed : (
                       ) => {

                   }, icon: Icon(FontAwesomeIcons.cog),
                   color: Colors.white,
                   iconSize: 22.2,),
                   Text('Setting',
                style: TextStyle(
               color: Colors.white,
                    ),),
                 ],
               ),



             ),
             Padding(
               padding: const EdgeInsets.only(right: 3.0),
               child: Row(
                 children: [

                   IconButton(onPressed : (
                       ) => {

                   }, icon: Icon(FontAwesomeIcons.question),
                     color: Colors.white,
                   iconSize: 22.2,),
                   Text('Help & feedback',
                     style: TextStyle(
                     color: Colors.white,

                       ),),

                 ],
               ),



             ),
             Padding(
               padding: const EdgeInsets.only(left:1.0),
               child: Expanded(
                 child: new Container(

                     child: Divider(
                       color: Colors.black,
                       height: 20,
                     )),

               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 70.0),
               child: Row(
                 children: [
                     Text("privarcy policy . Terms of service",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 13,
                     ),)
                    ],
               ),
              ),



           ],
         ),


       );
     });
   }



   @override
   Widget build(BuildContext context) {


    return  Scaffold(
      backgroundColor: Colors.white70,
    appBar : AppBar(
      backgroundColor: Colors.white54,
      elevation: 9.0,
       title: Container(
         width: double.infinity,
         height : 40,
         color : Colors.white54,
         child : Center (
           child : TextField(
             decoration: InputDecoration(
               hintText: '                                         Flash',
                   prefixIcon: Icon(Icons.search),
                   suffixIcon:  CircleAvatar(
                 backgroundImage : AssetImage('assets/ninja.jpg'), ),
             ),
           ),
         ),

       ),
    ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
            children: <Widget>[

              ListTile(
                leading:  CircleAvatar(backgroundImage:   AssetImage("assets/ninja.jpg"),
                  child: GestureDetector(onTap: () {

                    createDialog(context,"assets/ninja.jpg","jaideepm05@gmail.com","Sai Jaideep Reddy Mure");

                  },
                  ),),
                title: Text('Sai Jaideep Reddy Mure'),

    ),
              ListTile(

                leading:  CircleAvatar(backgroundImage:   AssetImage("assets/basha..jpeg"),
                  child: GestureDetector(onTap: () {

                    createDialog(context,"assets/basha..jpeg","bashashaik@gmail.com","Shaik Basha");

                  },
                  ),),
                title: Text('Shaik Basha'),
              ),
              ListTile(

                leading:  CircleAvatar(backgroundImage: AssetImage("assets/air-1.jpeg"),
                  child: GestureDetector(onTap: () {
                    createDialog(context,"assets/air-1.jpeg","charanreddy2500q@gmail.com","Desu Sri Charan Reddy");
                  },
                  ),
                ),
                title: Text('Desu Sri Charan Reddy'),
              ),
              ListTile(
                leading:  CircleAvatar(backgroundImage: AssetImage("assets/ninja.jpg"),
                  child: GestureDetector(onTap: () {
                    createDialog(context,"assets/ninja.jpg","kasyapvaranasi@gmail.com","Kasyap");

                  },),),
                title: Text('kasyap'),
              ),
              ListTile(
                leading:  CircleAvatar(backgroundImage: AssetImage("assets/basha..jpeg"),
                  child: GestureDetector(onTap: () {
                    createDialog(context,"assets/basha..jpeg","sashankkotta@gmail.com","Sashank Kottha");
                  },),),
                title: Text('Sashank Kottha'),
              ),
            ],
          ),
      ),


    );
  }
}



