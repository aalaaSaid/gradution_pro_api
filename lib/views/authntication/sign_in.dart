
import 'package:flutter/material.dart';
import 'package:graduation_project/views/authntication/sign_up.dart';
import 'package:graduation_project/views/authntication/wedigt/custome_textfield.dart';
import 'package:graduation_project/views/catogries/catogries_sc.dart';


class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool isNotShow = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sign.jpeg'),
                    fit: BoxFit.cover,
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 250),
                      Text('Join with us now!' ,
                        style: TextStyle(
                          fontWeight: FontWeight.bold ,
                          fontSize: 30
                        ),
                      ),
                      SizedBox(height: 30),
                      custom_textf(
                          lab: 'Email', pre: Icons.email),
                      SizedBox(height: 10,),
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
                      SizedBox(height: 10,),
                      custom_textf(
                          lab: 'Name', pre: Icons.person),
                      SizedBox(height: 30,),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context)=>cato()));
                        },
                          child: Text('Register' ,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                          ) ,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: [
                          Text('If you have an account' ,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (context)=>register()));
                          },
                              child: Text('Login Now!',
                                style:TextStyle(
                                  fontWeight: FontWeight.bold ,
                                  fontSize: 20,
                                  color: Colors.black
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}