import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/camera_show/camera_sc.dart';
import 'package:graduation_project/core/routing.dart';

class glass extends StatelessWidget {
  final String? image;
  final String? price;
  final Function() onTap;
  glass({required this.image, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: onTap ,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
                image: DecorationImage(
                  image: AssetImage(image! ,),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              price!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
            )
          ],
        ),
      ],
    );
  }
}
