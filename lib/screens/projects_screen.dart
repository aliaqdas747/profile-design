import 'package:flutter/material.dart';
import 'package:portfolio/costom_widgets.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List newList = [1, 2, 3, 4, 5, 6, 7, 7];
  var isHovered= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "Projects",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 60,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: 'PRO'),
                              TextSpan(
                                text: 'JECTS',
                                style: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontSize: 60,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Elevate your digital experience with my Flutter expertise. Seamlessly blending design and performance to bring your vision to life! 🚀💻',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          "Github",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Container(
                          height: 5,
                          width: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white,
                                Colors.blue,
                                Colors.purple,
                                Colors.pink,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),

                        ),
                        width: 400,
                        height: 400,
                        child: ListWheelScrollView(
                            itemExtent: 150, // Adjust the height of each item as needed
                            children:  [
                              pro_container(),
                              pro_container(),
                              pro_container(),
                              pro_container(),
                              pro_container(),
                              pro_container(),
                              pro_container(),
                            ]

                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
