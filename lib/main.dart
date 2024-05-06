import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/views/intro_views/splash_sc.dart';


import 'views/intro_views/on_boarding_sc.dart';
import 'package:flutter/material.dart';

void main()async {
// Ensure that plugins are initialized before runApp() is called
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras
  final cameras = await availableCameras();

  // Get the front camera from the list
  final frontCamera = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.front,
    orElse: () => cameras.first, // If no front camera is available, use the first camera
  );
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  splash(),

    );
  }
}
