import 'package:flutter/material.dart';

import '../widgets/List_v.dart';
import '../widgets/list_H.dart';
import '../widgets/search_bar.dart';

class Massenger extends StatelessWidget {
   Massenger({super.key});

  static String id='Massenger';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/WhatsApp Image 2024-06-22 at 2.57.29 PM.jpeg'),
            ),
            Spacer(flex: 1,),
            Text('C H A T',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            Spacer(flex: 1,),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xff2A2A2A),
            child: Icon(Icons.camera_alt,color: Colors.white,),
          ),
          SizedBox(width: 5,),
          CircleAvatar(
            backgroundColor: Color(0xff2A2A2A),
            child: Icon(Icons.edit,color: Colors.white,),
          ),
          SizedBox(width: 10,)
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [

              Searchbar(),
              SizedBox(height: 15,),
              Container(
                height: 110,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => ListItemH(),
                scrollDirection: Axis.horizontal,
                itemCount: 10, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 10,); },
                ),
              ),
              SizedBox(height: 15,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),

                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => ListItemV(),
                  separatorBuilder: (context, index) => SizedBox(height: 10,),
                  itemCount:20 )

            ]
          ),
        ),
      ),
    );
  }
}






