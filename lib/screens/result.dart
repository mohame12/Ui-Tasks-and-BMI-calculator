import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   const ResultScreen({super.key, required this.ismale, required this.height, required this.weight, required this.age});
   final bool ismale;
   final double height;
   final int weight;
   final int age;
  static String id='ResultScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: () { Navigator.pop(context); },),
            Spacer(flex: 1,),
             Center(child: Text('R S U L T E',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
            Spacer(flex: 1,),
          ],
        ),
      ),
      body: Column(
crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('G E N D E R :${ismale? 'M A L E':'F E M A L E'} ',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),)),
          Text('H E I G H T :${height.round()}',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
          Text('W E I G H T :$weight',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
          Text('A G E :$age',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
          const SizedBox(height: 50,),
          const Text('R E S U L T :  ${5}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),



        ],
      ),

    );
  }
}
