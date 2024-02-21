import 'package:flutter/material.dart';
import 'package:portfolio/screens/About_Screen.dart';
import 'package:portfolio/screens/Contact_screen.dart';

import 'costom_widgets.dart';
import 'screens/projects_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
       return Scaffold(
appBar: AppBar(
  centerTitle: true,
  backgroundColor: Colors.black,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.end, children: [
    RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(
            text: 'port',
            style: TextStyle(
              color: Colors.blue, // Start color
              fontSize: 25,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none, // Remove underline
            ),
          ),
          TextSpan(
            text: 'folio',
            style: TextStyle(
              color: Colors.pink, // End color
              fontSize: 25,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none, // Remove underline
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(left: 5),
      height:100,width: 30,color: Colors.pink,),
    SizedBox(width: 5,),
    Container(height:100,width: 30,color: Colors.blue,),
  ],),
),
backgroundColor: Colors.black,

      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Wrap(
             alignment: WrapAlignment.center,

                children: [
                Container(
                  margin: EdgeInsets.only(top: 0),

                    child: Column(
                      children: [
                        Image.asset('assets/images/me.png'),
                        Container(color: Colors.white,height: 5,width: 200,)
                      ],
                    )),
                Container(
                   margin: EdgeInsets.only(top:100,left: 10),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("I'm ALI AQDAS",style: TextStyle(color: Colors.white,fontSize: 35),),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: 'Flutter ',
                              style: TextStyle(
                                color: Colors.blue, // Start color
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none, // Remove underline
                              ),
                            ),
                            TextSpan(
                              text: 'Developer',
                              style: TextStyle(
                                color: Colors.pink, // End color
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none, // Remove underline
                              ),
                            ),
                          ],
                        ),
                      ),

                      Text("Fluttering Elegance, Coding Excellence: Your Vision, Our code.",style: TextStyle(color: Colors.white,fontSize: 18),),
                      SizedBox(height: 10,),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white,
                                Colors.blue,
                                Colors.pink,
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.download,color: Colors.black,),
                              Text('Download CV',style: TextStyle(fontWeight: FontWeight.bold),)

                            ],
                          ),
                          margin: EdgeInsets.all(5),
                          height: 35,width: 150, ),
                      ),
                      SizedBox(height: 100,)
                     , Container(
                       child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                          child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                           children: [
                             InkWell(
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>projects()));
                                 },
                                 child: Costom_container(title: 'Projects', discription: 'Explore Our \nImpressive Projects')),

                             InkWell(
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));

                                 },
                                 child: Costom_container(title: 'About', discription: '"Forging Future:\n Our Brief Tale."')),

                             InkWell(
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact()));

                                 },
                                 child: Costom_container(title: 'Contact', discription: '"Hit us up! Your gateway \nto tech solutions and a\n sprinkle of smiles."')),
                           ],
                         ),
                       ),
                     )

                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 30,)

          ],
        ),
      )
    );
  }
}
