import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/constants.dart';
import 'package:test_project/widgets/custom_app_bar.dart';

class SignToTextPage extends StatefulWidget {
  @override
  _SignToTextPageState createState() => _SignToTextPageState();
}

class _SignToTextPageState extends State<SignToTextPage> {
  CameraController? _cameraController;
  List<CameraDescription>? _cameras;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    _cameraController = CameraController(
      _cameras![0],
      ResolutionPreset.medium,
    );
    await _cameraController!.initialize();
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(10)
              
            ),
            height: 70,
            width: 370,
          child: const Center(
            child: Text(
              'لغة الإشارة إلى نص',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: kPrimaryColor),
            ),
          ),
          ),
          const SizedBox(height: 45),
          _cameraController != null && _cameraController!.value.isInitialized
              ? Container(
                  height: 250,
                  width: double.infinity,
                  child: CameraPreview(_cameraController!),
                )
              : Container(
                  height: 250,
                  width: double.infinity,
                  color: Colors.black,
                  child:const  Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
          const SizedBox(height: 16),
          const Text(
            'الجملة الحالية:',
            style: TextStyle(fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Add your speech synthesis functionality here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffF3FCD6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child:const  Text(
              'نُطق جملة',
              style: TextStyle(color:Color(0xff6B7B00), fontSize: 20,fontFamily: 'Alexandria'),
            ),
          ),
          const Spacer(),
        ]
      ),
    );
  }
}
