import 'package:abdallamassenger/screens/result.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});
  static String id = 'BmiScreen';

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int weight=70;
  int age=20;
  double height=80;
  bool ismale=true;

  Color color=const Color(0xff1A1B2D);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0F1E),
      appBar: AppBar(
        backgroundColor: const Color(0xff0A0F1E),
        title: const Center(
            child: Text(
          'B M I  C A L C U L A T O R',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        ismale=true;

                      });
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        color: ismale?Colors.blueGrey:color,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 100,
                          ),
                          Text(
                            'M A L E',
                            style:
                            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        ismale=false;
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color: ismale ? color:Colors.blueGrey,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 100,
                          ),
                          Text(
                            'F E M A L E',
                            style:
                            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    color: const Color(0xff1A1B2D),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'H E I G H T',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Slider(value: height,max: 200.0,min: 50.0, onChanged: (value){
                      setState(() {
                        height=value;
                      });
                    })
                  ],
                ),
              ),
            ),
            const Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xff1A1B2D),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'W E I G H T',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                        Text(
                          '$weight',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              FloatingActionButton(
                                heroTag: 4,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Center(
                                    child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 40),
                                )),
                              ),
                              const Spacer(flex: 1,),
                              FloatingActionButton(
                                heroTag: 5,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Center(
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 40),
                                    )),
                              ),

                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  const Spacer(flex: 1,),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xff1A1B2D),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'A G E',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                        Text(
                          '$age',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              FloatingActionButton(
                                heroTag: 2,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Center(
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 40),
                                    )),
                              ),
                              const Spacer(flex: 1,),
                              FloatingActionButton(
                                heroTag: 1,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Center(
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 40),
                                    )),
                              ),

                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 1,),
            SizedBox(
              width: double.infinity,
              height: 65,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ResultScreen(ismale: ismale, height: height, weight: weight, age: age,),));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, elevation: 4),
                  child: const Text(
                    'C A L C U L A T O R',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

