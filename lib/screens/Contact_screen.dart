import 'package:flutter/material.dart';

import '../costom_widgets.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
var newDeco =  BoxDecoration(
color: Colors.grey.shade900,
borderRadius: BorderRadius.circular(20),
boxShadow: [
BoxShadow(
color: Color(0xFF00FFFF), // Start color
offset: Offset(-5, -5),
blurRadius: 10,
),
BoxShadow(
color: Color(0xFFFF00FF), // End color
offset: Offset(5, 5),
blurRadius: 10,
),
],
);
 var contDeco= BoxDecoration(
  boxShadow: [
    BoxShadow(
  color: Colors.black,
  spreadRadius: 5,
  blurRadius: 7,
  offset: Offset(0,3)
  ),],
  color: Colors.grey.shade900,
  borderRadius: BorderRadius.circular(20),

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Let's get connected!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
      ),
      backgroundColor: Colors.black,
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Wrap(
                 alignment: WrapAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 10,right: 10),
                    width: 400,
                    height: 500,

                    decoration: contDeco,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          SizedBox(
                              height: 80,
                              child: CustomTextField(text_1: 'Email Address', icon:Icon( Icons.alternate_email,color: Colors.white,))),
                          SizedBox(
                              height: 80,
                              child: CustomTextField(text_1: 'Enter Your Name', icon: Icon(Icons.person,color: Colors.white,))),
                          Expanded(child: CustomTextField(text_1: 'Enter Message', icon: Icon(Icons.message,color: Colors.white,))),

                          Container(
                              margin: EdgeInsets.all(10),
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                  style: ButtonStyle(

                                  ),
                                  onPressed: (){}, icon: Icon(Icons.send,color: Colors.black,), label: Text("Send",style: TextStyle(color: Colors.black),)))

                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 10,right: 10),
                    width: 400,


                    decoration: contDeco,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                        margin: EdgeInsets.all(10),

                        width: double.infinity,
                        decoration:newDeco,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [

                            Text("Let's get connected!",style: TextStyle(color: Colors.white,fontSize: 20),),

                          LinkDecoration(icon: Icon(Icons.person,color: Colors.white,), text: ' Ali Aqdas', onTap: (){}),
                           LinkDecoration(icon: Icon(Icons.location_on,color: Colors.white,), text: 'Azad Kashmir district kotli ,City Charhoi', onTap: (){}),
                            LinkDecoration(icon: Icon(Icons.phone,color: Colors.white,), text: ' +923136033747', onTap: (){}),
                           LinkDecoration(icon: Icon(Icons.email_rounded,color: Colors.white,), text: ' aliaqdas747@gmail.com', onTap: (){}),

                            SizedBox(
                              height: 10,
                            ),
                          ],),
                        ),
                      ),
                          SizedBox(height: 20,),
                          Container(
                            margin: EdgeInsets.all(10),


                            width: double.infinity,
                            decoration: newDeco,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(children: [

                                Text("You can contact me ",style: TextStyle(color: Colors.white,fontSize: 20),),


                                SizedBox(
                                  height: 10,
                                ),
                                LinkDecoration2(image: Image.asset('assets/images/instagram.png',height: 35,width: 35,), text: "aliaqdas_1", onTap: (){}),
                             SizedBox(height: 5,),
                                LinkDecoration2(image: Image.asset('assets/images/face.png',height: 35,width: 35,), text: "aliaqdas_1", onTap: (){}),
                                SizedBox(height: 5,),
                                LinkDecoration2(image: Image.asset('assets/images/linkedin.png',height: 35,width: 35,), text: "aliaqdas_1", onTap: (){}),

                              ],),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
