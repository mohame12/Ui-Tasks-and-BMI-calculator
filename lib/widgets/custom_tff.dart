import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTFF extends StatelessWidget {
  CustomTFF({
    super.key,
    required this.textInputType,
    required this.textEditingController,
    required this.hint,
    required this.lable,
    this.onChange,
    this.onSupmitted,
    required this.isScure,
    this.prefix,
    this.susfix,
    this.susFun
  });


  final TextEditingController textEditingController;
  final TextInputType textInputType;
  var onChange;
  var onSupmitted;
  final String hint;
  final String lable;
  final bool isScure;
IconData? susfix;
IconData ?prefix;
var susFun;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data){
        if(data!.isEmpty)
          {
            return 'enter Feild';
          }
      },
      obscureText:isScure ,
      controller:textEditingController ,
      keyboardType: TextInputType.emailAddress,
      onFieldSubmitted:onSupmitted ,
      onChanged: onChange,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        suffixIcon:IconButton(icon: Icon(susfix), onPressed:susFun ,),
          prefixIcon:Icon(prefix) ,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          labelText: lable,
          labelStyle: TextStyle(color: Colors.grey),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black)
          )
      ),
    );
  }
}