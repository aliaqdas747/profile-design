import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class About extends StatefulWidget {
  const About({Key? key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  var BoxDeco = BoxDecoration(
    color: Colors.grey.shade900,
    borderRadius: BorderRadius.circular(10),
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

  final List<String> flutterSkills = [

    "Android Development",
    "iOS Development",
    "Web & Web app \n Development",
    "Windows Software development",
    "MacOs Software Development",

    // Add more skills as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
       centerTitle: true,
        title: Text("A B O U T",style: TextStyle(color: Colors.white,fontSize: 30),),

        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  // Intro Container
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 500,
                    width: 300,
                    decoration: BoxDeco,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Introduction",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "I'm Ali Aqdas, a skilled Flutter developer from the breathtaking region of Azad Kashmir, Pakistan. I hold a certificate in Flutter from Tevta Technological Institute in Mirpur, and I'm currently pursuing Software Engineering at a prestigious university in Islamabad. My journey, blending the picturesque landscapes of Azad Kashmir and the dynamic tech scene in Islamabad, has fueled my passion for creating seamless digital experiences. Let's craft something extraordinary together! 🚀.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Languages",    style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        Container(
                          margin: EdgeInsets.only(top: 20,left: 10,right: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                                color: Colors.black,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0,3)
                            ),],
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(20),

                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "English",    style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                Text(
                                  "Urdu",    style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                    fontWeight: FontWeight.bold

                                ),
                                ),
                                Text(
                                  "Hindi",    style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                    fontWeight: FontWeight.bold

                                ),
                                ),
                              ],
                            ),
                          ),
                        )


                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,height: 20,),
                  // Skill Container
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 500,
                    width: 300,
                    decoration: BoxDeco,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                       child: SingleChildScrollView(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                          Text(
                            "Flutter Skills",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20,),
                          // Timeline starts here
                          for (int i = 0; i < flutterSkills.length; i++)
                            TimelineTile(
                              alignment: TimelineAlign.start,
                              lineXY: 0.2,
                              indicatorStyle: const IndicatorStyle(
                                width: 20,
                                color: Colors.white,
                                indicatorXY: 0.2,
                              ),
                                 endChild: Container(

                                   margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(16),
                                constraints: const BoxConstraints(
                                  minHeight: 50,
                                ),

                                decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0,3)
                                ),],
                                  color: Colors.grey.shade900,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                child: Text(
                                  flutterSkills[i],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          // Timeline ends here
                                               ],
                                             ),
                       ),
                    ),
                  ),
                  SizedBox(width: 20,height: 20,),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 500,
                    width: 300,
                    decoration: BoxDeco,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "What can i do?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20,),
                         Text(

                             "Flutter Framework: Proficient in using Flutter for cross-platform app development.\n"
                                 "Dart Programming: Strong skills in Dart, the programming language for Flutter.\n"
                                 "Widget-based UI: Creating intuitive user interfaces using Flutter's widget system.\n"
                                 "State Management: Efficiently managing and controlling application state.\n"
                                 "API Integration: Integrating with RESTful APIs and other web services.\n"
                                 "Platform-specific Code: Implementing code for both iOS and Android platforms.\n"
                                 "Debugging & Testing: Expertise in debugging and writing effective unit tests.\n"
                                 "Version Control (Git): Familiarity with Git for version control.\n"
                                 "Responsive Design: Designing responsive and visually appealing UIs.\n"
                                 "Collaboration: Effective teamwork and collaboration skills.",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

