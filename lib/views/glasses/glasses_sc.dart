import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:graduation_project/camera_show/camera_sc.dart';
import 'package:graduation_project/core/routing.dart';
import 'package:graduation_project/views/glasses/custome_glass.dart';
import 'package:graduation_project/views/glasses/glass_model.dart';
 // Import CameraApp class

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  late CameraDescription? frontCamera;

  @override
  void initState() {
    super.initState();
    _getFrontCamera();
  }

  // Function to get the front camera
  void _getFrontCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    setState(() {
      frontCamera = cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.front,
        orElse: () => cameras.first, // If no front camera is available, use the first camera
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: AppBar(
        backgroundColor: Color(0xfff3f3f3),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'VAST',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 36,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 36,
            ),
          ),
        ],
      ),
      body:Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: glassesList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (
              crossAxisCount: 2,
              crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            return glass(
              image:glassesList[index].image,
              price: glassesList[index].price ,
              onTap: (){
                navgateto(context, CameraApp(camera: frontCamera!,index: index,));

              },
            );
          },
        ),
      ),
    );
  }
}


