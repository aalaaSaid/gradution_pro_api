import 'package:flutter/material.dart';

class custom_textf extends StatelessWidget {
  const custom_textf({required this.lab , required this.pre , this.suff ,this.suffFun ,this.obscure});
  final String lab ;
  final IconData pre ;
  final IconData? suff ;
  final Function()?suffFun ;
  final bool? obscure ;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: obscure??false,
      decoration: InputDecoration(
          prefixIcon: Icon(pre , color: Colors.black,),
          label:Text('$lab') ,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
          suffixIcon: suff != null ?IconButton(
              onPressed: suffFun,
              icon:Icon(suff,
                color: Colors.black,
              )):
          SizedBox() ,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black)
          )

      ),
    );
  }
}