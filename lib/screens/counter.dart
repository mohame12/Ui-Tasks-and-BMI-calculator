import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  static String id='CounterScreen';

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int c=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('C O U N T E R',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 1,),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                onPressed: ()
                {
                  c++;
                  setState(() {

                  });

                },
                child: const Text('+',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
            const Spacer(flex: 1,),
            Text('$c',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 60),),
            const Spacer(flex: 1,),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: ()
                {
                  c--;
                  setState(() {

                  });
                },
                child: const Text('-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
            const Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
