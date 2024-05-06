import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/routing.dart';
import 'package:graduation_project/views/catogries/custome_cato.dart';
import 'package:graduation_project/views/glasses/custome_glass.dart';
import 'package:graduation_project/views/glasses/glasses_sc.dart';

class cato extends StatelessWidget {
  const cato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: AppBar(
        backgroundColor: Color(0xfff3f3f3),
        leading: Icon(
          Icons.navigate_before_rounded,
          size: 36,
          color: Colors.black,
        ),
        title: Text(
          'Categories',
          style: TextStyle(
            fontSize: 36,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            custome_cato(
              image:
                  'assets/cat1.jpg',
              name: 'Ray_Ban',
            ),
            SizedBox(
              height: 10,
            ),
            custome_cato(
              image:
                  'assets/cat2.jpg',
              name: 'Gucci',
            ),
            SizedBox(
              height: 10,
            ),
            custome_cato(
                image:
                    'assets/cat3.jpg',
                name: 'Lacosta'),
            SizedBox(
              height: 10,
            ),
            custome_cato(
                image:
                    'assets/cat4.jpg',
                name: 'Prada'),
            SizedBox(
              height: 10,
            ),
            custome_cato(
                image:
                    'assets/cat5.jpg',
                name: 'Tom_Ford'),
          ],
        ),
      ),
    );
  }
}
