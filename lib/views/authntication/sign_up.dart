

import 'package:flutter/material.dart';
import 'package:graduation_project/core/routing.dart';
import 'package:graduation_project/views/authntication/sign_in.dart';
import 'package:graduation_project/views/authntication/wedigt/custome_textfield.dart';
import 'package:graduation_project/views/catogries/catogries_sc.dart';
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _eegisterState();
}

class _eegisterState extends State<register> {
  bool isNotShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/sign.jpeg'),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 250),
                Text('Log in to your account!' ,
                  style:TextStyle(
                      fontWeight: FontWeight.bold ,
                  fontSize: 30
                  ),
                ),
                SizedBox(height: 50),
                custom_textf(
                    lab: 'Email', pre: Icons.email),
                SizedBox(height: 20,),
                custom_textf(
                  lab: 'Password',
                  pre: Icons.lock,
                  obscure: true,
                  suff: isNotShow?Icons.visibility_off:Icons.remove_red_eye,
                  suffFun: (){
                    setState(() {
                      isNotShow = !isNotShow ;
                    });
                  },
                ) ,
                SizedBox(height: 50,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    navgateWithReplac(context, cato());
                  },
                    child: Text('Login' ,
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                    ) ,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text('If you do not have an account' ,
                      style: TextStyle(
                          fontWeight: FontWeight.bold ,
                      ),
                    ),
                    TextButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context)=>signIn()));
                    },
                        child: Text('Create One!',
                          style:TextStyle(
                              fontWeight: FontWeight.bold ,
                          fontSize: 20,
                          color: Colors.black
                          ) ,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}
