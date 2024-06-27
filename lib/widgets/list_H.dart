import 'package:flutter/material.dart';

class ListItemH extends StatelessWidget {
  const ListItemH({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 110,
      width: 72,
      child: Column(

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
          Text('Mohamed Elsayed',style: TextStyle(color: Colors.white),maxLines: 2,),
        ],
      ),
    );
  }
}