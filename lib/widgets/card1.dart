import 'package:flutter/material.dart';


class Card1 extends StatefulWidget {
  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10.0)),
      height: 300,
      width: 200,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
              child: Image.network('https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',)),
          Text('Double The Muscle',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
          Divider(thickness: 2,),
          Text('description text',style: TextStyle(color: Colors.white),),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                TextButton(onPressed: (){}, child: Text('View details',style: TextStyle(color: Colors.white),)),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.currency_rupee,color: Colors.white,),
                    Text('3999',style: TextStyle(color: Colors.white),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
// Container(
// decoration: BoxDecoration(color: Colors.black54),
// height: 300,
// width: 250,
// child: Column(
// children: [
// Expanded(child: Image.network('https://i.redd.it/llfx7sw5em791.jpg',height: 150,fit: BoxFit.cover,)),
// Text(
// 'Double The Muscle',
// style: TextStyle(
// fontSize: 24,
// fontWeight: FontWeight.bold,
// ),
// ),
// ],
// ),
