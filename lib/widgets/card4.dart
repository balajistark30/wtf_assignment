import 'package:flutter/material.dart';

class Card4 extends StatefulWidget {
  final String title;
  final String price;
  final String perdayprice;

  Card4({required this.title, required this.price, required this.perdayprice});

  @override
  State<Card4> createState() => _Card2State(title,price,perdayprice);
}

class _Card2State extends State<Card4> {
  late final String title;
  late final String price;
  late final String perdayprice;
  _Card2State(this.title,this.price,this.perdayprice);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: MediaQuery.of(context).size.height/7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                  )
                ]),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Text(
                        title,
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,),
                      child: Text('Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit\ntempor incididunt ut labore ',maxLines: 3,
                          overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                    ),

                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                  child: VerticalDivider(thickness: 1.0,color: Colors.white70),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.currency_rupee,size: 15,),
                          Text(price,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.currency_rupee,size: 10.0,color: Colors.grey,),
                          Text(perdayprice,style: TextStyle(color: Colors.grey,fontSize: 10.0),),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
