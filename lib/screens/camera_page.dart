import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();

}

class _CameraPageState extends State<CameraPage> {
  String selectedImagePath = '';
  selectImageFromGallery() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }

//
  selectImageFromCamera() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          selectedImagePath == ''
              ? Center(child: Image.asset('assets/images/image_placeholder.png', height: 200, width: 200, fit: BoxFit.fill,))
              : Center(child: Image.file(File(selectedImagePath), height: 200, width: 200, fit: BoxFit.fill,)),
          const Text(
            'Select Image',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding:
                  MaterialStateProperty.all(const EdgeInsets.all(20)),
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(fontSize: 14, color: Colors.white))),
              onPressed: () async {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)), //this right here
                        child: SizedBox(
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                const Text(
                                  'Select Image From !',
                                  style:  TextStyle(
                                      fontSize: 18.0, fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        selectedImagePath = await selectImageFromGallery();

                                        if (selectedImagePath != '') {
                                          Navigator.pop(context);
                                          setState(() {});

                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                            content: Text("No Image Selected !"),
                                          ));
                                        }
                                      },
                                      child: Card(
                                          elevation: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/images/gallery.png',
                                                  height: 60,
                                                  width: 60,
                                                ),
                                                const Text('Gallery'),
                                              ],
                                            ),
                                          )),
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        var selectedImagePath = await selectImageFromCamera();


                                        if (selectedImagePath != '') {
                                          Navigator.pop(context);
                                          setState(() {});

                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                            content: Text("No Image Captured !"),
                                          ));
                                        }
                                      },
                                      child: Card(
                                          elevation: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/images/camera.png',
                                                  height: 60,
                                                  width: 60,
                                                ),
                                                const Text('Camera'),
                                              ],
                                            ),
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                setState(() {});
              },
              child: const Text('Select')),
          const SizedBox(height: 10),


        ],
      ),
    );
  }
}



// Future selectImage() {
//   return  showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20.0)), //this right here
//           child: Container(
//             height: 150,
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 children: [
//                   Text(
//                     'Select Image From !',
//                     style: TextStyle(
//                         fontSize: 18.0, fontWeight: FontWeight.bold),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       GestureDetector(
//                         onTap: () async {
//                           selectedImagePath = await selectImageFromGallery();
//                           print('Image_Path:-');
//                           print(selectedImagePath);
//                           if (selectedImagePath != '') {
//                             Navigator.pop(context);
//                           } else {
//                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                               content: Text("No Image Selected !"),
//                             ));
//                           }
//                         },
//                         child: Card(
//                             elevation: 5,
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 children: [
//                                   Image.asset(
//                                     'assets/images/gallery.png',
//                                     height: 60,
//                                     width: 60,
//                                   ),
//                                   Text('Gallery'),
//                                 ],
//                               ),
//                             )),
//                       ),
//                       GestureDetector(
//                         onTap: () async {
//                           var selectedImagePath = await selectImageFromCamera();
//                           print('Image_Path:-');
//                           print(selectedImagePath);
//
//                           if (selectedImagePath != '') {
//                             Navigator.pop(context);
//                           } else {
//                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                               content: Text("No Image Captured !"),
//                             ));
//                           }
//                         },
//                         child: Card(
//                             elevation: 5,
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 children: [
//                                   Image.asset(
//                                     'assets/images/camera.png',
//                                     height: 60,
//                                     width: 60,
//                                   ),
//                                   Text('Camera'),
//                                 ],
//                               ),
//                             )),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         );
//       });
// }



