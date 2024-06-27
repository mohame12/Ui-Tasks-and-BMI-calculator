import 'package:abdallamassenger/screens/bmi_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_tff.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();

  TextEditingController pass = TextEditingController();

   String? email_data;

   String? pass_data;

  GlobalKey<FormState>formkey=GlobalKey();

  bool isSecure=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Center(
            child: Text(
          'T R E N D',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 150,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [ Text(
                    'L O G I N',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
                  ),]
                ),
                const SizedBox(height: 50,),
                CustomTFF(
                  textInputType: TextInputType.emailAddress,
                  textEditingController: email,
                  hint: 'Email',
                  lable: 'Email',
                  onChange: (data) {
                    email_data = data;

                  },
                  isScure: false,
                 prefix:Icons.email ,


                ),
                const SizedBox(height: 20,),
                CustomTFF(
                  textInputType: TextInputType.visiblePassword,
                  textEditingController: pass,
                  hint: 'Password',
                  lable: 'Password',
                  onChange: (data) {
                    pass.text = data;
                  },
                  isScure: isSecure,
                susfix: isSecure==true ?Icons.visibility_off:Icons.visibility,
                susFun: (){

                    setState(() {
                      isSecure =!isSecure;
                    });
                },
                ),
                const SizedBox(height: 50,),
                SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {
                        if(formkey.currentState!.validate())
                          {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BmiScreen(),));

                          }

                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black, elevation: 4),
                      child: const Text(
                        'L O G I N',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('you don`t have an account '),
                    GestureDetector(
                        onTap: () {

                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
