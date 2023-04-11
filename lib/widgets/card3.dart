import 'package:flutter/material.dart';

class Card3 extends StatefulWidget {
  final String musclegroup;

  const Card3({required this.musclegroup});


  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {



  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      elevation: 4.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 200,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xffFEF2F2),
                child: Text(
                  widget.musclegroup,
                  style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Icon(Icons.run_circle,size: 40,),
                  Text('3 Exercises',style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  Icon(Icons.timer,size: 40,),
                  Text('25 Mins',style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  Icon(Icons.local_fire_department,size: 40,),
                  Text('210 Cal',style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
