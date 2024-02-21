import 'package:flutter/material.dart';
import 'package:portfolio/costom_widgets.dart';

class projects extends StatefulWidget {
  const projects({super.key});

  @override
  State<projects> createState() => _projectsState();
}

class _projectsState extends State<projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text("Projects",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          

              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),
          
          
                ],),
              SizedBox(height: 100,),
              Text("Painding Projects",style: TextStyle(color: Colors.white,fontSize: 35),),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),
                  Project_container(),


                ],),
          
            ],
          ),
        ),
      ),
    );
  }
}
