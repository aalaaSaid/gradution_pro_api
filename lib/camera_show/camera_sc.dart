
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraApp extends StatefulWidget {
final int index ;
final CameraDescription camera;

const CameraApp({Key? key, required this.camera ,required this.index}) : super(key: key);

@override
_CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
late CameraController _controller;
late Future<void> _initializeControllerFuture;

@override
void initState() {
super.initState();
_initializeCamera();
}

// Function to initialize camera
void _initializeCamera() async {
try {
// Initialize the controller with the selected camera
_controller = CameraController(widget.camera, ResolutionPreset.medium);

// Ensure that the controller is initialized
_initializeControllerFuture = _controller.initialize().then((_) {
setState(() {}); // Trigger a rebuild once initialization is complete
});
} catch (e) {
print('Error initializing camera: $e');
}
}

@override
void dispose() {
// Dispose of the controller when the widget is disposed
_controller.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Buy it Now',
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 24,
),
),
centerTitle: true,
elevation: 0,
backgroundColor: Color(0xffff3f3),
),
body: FutureBuilder<void>(
future: _initializeControllerFuture,
builder: (context, snapshot) {
if (snapshot.connectionState == ConnectionState.done) {
return CameraPreview(_controller);
} else {
return Center(child: CircularProgressIndicator());
}
},
),

);
}
}