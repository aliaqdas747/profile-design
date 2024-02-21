import 'package:flutter/material.dart';

class Costom_container extends StatefulWidget {
  final String title;
  final String discription;


  const Costom_container({super.key, required this.title, required this.discription});

  @override
  State<Costom_container> createState() => _Costom_containerState();
}

class _Costom_containerState extends State<Costom_container> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event){
        setState(() {
          isHovered=true;
        });
      },
      onExit: (event){
        setState(() {

          isHovered = false;
        });

      },

      child: Container(
        margin: EdgeInsets.only(left: 10,right: 10),
        height: 150,
        width: 210,
        decoration: BoxDecoration(
          gradient: isHovered
              ? LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white,Colors.blue,Colors.purple,Colors.pink,  ],
          )
              : null,
          color: isHovered ? null : Colors.grey.shade900,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              height: double.infinity,
              width: 5,
              color: isHovered ? Colors.grey.shade900:Colors.white ,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text(widget.title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: isHovered ? Colors.grey.shade900:Colors.white ,),),
                Text(widget.discription,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.shade800),),


              ],
            ),
          ],
        ),
      ),
    );
  }
}



//////////////////second/////////////////////////////////////////////


//////////////////////Costum Widget /////////////////////////


class Project_container extends StatefulWidget {
  const Project_container({super.key});

  @override
  State<Project_container> createState() => _Project_containerState();
}

class _Project_containerState extends State<Project_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 250,

      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [

        ]
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Image.asset('assets/images/new.png',height: 100,width: 200,),
              Text('Ecommerce App',style: TextStyle(fontSize: 20,color: Colors.black),),
              Text('Android And Ios app code',style: TextStyle(fontSize: 15,color: Colors.black),),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Center(
                  child: Text('UI & UX',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                   ),
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),

              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Center(
                  child: Text('Code',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                  ),
                ),



            ],
          ),
        ),
      ),
    );
  }
}

/////////////////////////////TextField Class ////////////////////////////////


class CustomTextField extends StatefulWidget {
  final String text_1;
  final Icon icon;


  const CustomTextField({
    Key? key,
    required this.text_1,
    required this.icon,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),

      decoration: BoxDecoration(
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
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLines: null,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: widget.icon,

            hintText: widget.text_1,
            hintStyle: TextStyle(color: Colors.white),
            focusColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
///////////////////////////////Contact Link decoration...../////////


class LinkDecoration extends StatefulWidget {
  final Icon icon;
  final String text;
  final VoidCallback onTap;

  const LinkDecoration({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  State<LinkDecoration> createState() => _LinkDecorationState();
}

class _LinkDecorationState extends State<LinkDecoration> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        child: Row(
          children: [
            widget.icon,
            Text(widget.text, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}



class LinkDecoration2 extends StatefulWidget {
  final Image image;
  final String text;
  final VoidCallback onTap;

  const LinkDecoration2({
    Key? key,
    required this.image,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  State<LinkDecoration2> createState() => _LinkDecorationState2();
}

class _LinkDecorationState2 extends State<LinkDecoration2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        child: Row(
          children: [
            widget.image,
            SizedBox(width: 5,),
            Text(widget.text, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
