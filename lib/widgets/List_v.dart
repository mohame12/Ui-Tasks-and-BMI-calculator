import 'package:abdallamassenger/screens/counter.dart';
import 'package:flutter/material.dart';

class ListItemV extends StatelessWidget {
  const ListItemV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacementNamed(context, CounterScreen.id);
      },
      child: Row(
        children: [
          Stack(
              children: [ CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/WhatsApp Image 2024-06-22 at 2.57.29 PM.jpeg'),
              ),
                Positioned(
                  top: 55,
                  left: 45,
                  child: CircleAvatar(

                    radius: 8,
                    backgroundColor: Colors.black,
                  ),
                ),
                Positioned(
                  top: 56,
                  left: 46,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                )
              ]
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mohamed Elsayed',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),),
                Row(children: [
                  Text('I will go to Show you How great I`am',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

                  Text('.  11:48 am',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}