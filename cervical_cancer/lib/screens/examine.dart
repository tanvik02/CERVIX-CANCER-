import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';



class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  bool textScanning = false;

  XFile? imageFile;

  String scannedText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08919F),
      appBar: AppBar(
        backgroundColor: Color(0xFF100036),
        centerTitle: true,
        title: const Text("Update your Prescription"),
      ),
      body: Center(

        child: SingleChildScrollView(
            child: Container(

              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (textScanning) const CircularProgressIndicator(),
                  if (!textScanning && imageFile == null)
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color(0xFF100036),
                      ),
                    ),
                  if (imageFile != null)
                    Image.file(File(imageFile!.path)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.grey,
                            shadowColor: Colors.grey[400],
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                          onPressed: (){
                            getImage(ImageSource.gallery);
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.image,
                                  size: 30,
                                ),
                                Text(
                                  "Gallery",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey[600]
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.grey,
                            shadowColor: Colors.grey[400],
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                          onPressed: (){
                            getImage(ImageSource.camera);
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.camera,
                                  size: 30,
                                ),
                                Text(
                                  "Camera",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey[600]
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      scannedText,
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ), )

        ), ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void getImage(ImageSource source) async {
    try{
      final pickedImage =
      await ImagePicker().pickImage(source: source);
      if (pickedImage != null){
        //textScanning =true;
        imageFile = pickedImage;
        setState(() { });
        //getRecognisedText(pickedImage);
      }

    }
    catch (e) {
      //textScanning =false;
      imageFile = null;
      setState(() { });
      scannedText ="Error occured  while scanning";
    }
  }

  void getRecognisedText(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    /*final textDetector = GoogleMlKit.vision.textRecognizer();
    RecognizedText recognisedText = await textDetector.processImage(inputImage);
    await textDetector.close();
    scannedText = "";
    for (TextBlock block in recognisedText.blocks) {
      for (TextLine line in block.lines) {
        scannedText = scannedText + line.text + "\n";
      }
    }
    textScanning = false;*/
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }
}
