import 'dart:async';

import 'package:api_task/main.dart';
import 'package:api_task/models/getPost_api.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:api_task/post.dart';
import "package:api_task/main.dart";

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login',
//     );
//   }
// }

class addFile extends StatefulWidget {
  @override
  _addFileState createState() => _addFileState();
}

class _addFileState extends State<addFile> {
  XFile? insidePic;
  String networkImage = "";
  final picker = ImagePicker();
  Future _getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    //File image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        insidePic = pickedFile;
        networkImage = "";
      } else {
        print('No image selected');
      }
    });
  }

  final categoryIdController = TextEditingController();
  final categoryNameController = TextEditingController();
  bool _isHidden = true;

  //final imageController = TextEditingController();

  bool _loading = false;

  GetPost? getpost_model;
  void formLogin() async {
    String categoryId = categoryIdController.text.trim();
    String categoryName = categoryNameController.text.trim();
    //String image = imageController.text.trim();

    FormData formData = FormData.fromMap({
      "categoryId": categoryId,
      "categoryName": categoryName,
      "image": MultipartFile.fromBytes(
        await insidePic!.readAsBytes(),
        filename: insidePic?.name,
      ),
    });

    setState(() {});

    var responce = await Dio().post(
        'http://jayanthi10.pythonanywhere.com/api/v1/add_category/',
        data: formData);

    if (responce.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));

      setState(() {
        _loading = true;
      });
    } else {
      print("please add  the file ");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                // horizontal: 18.0,
                // vertical: 16.0,
                ),
            child: Container(
              decoration: BoxDecoration(color: Color(0xffFFFFFF)),
              child: Column(children: [
                SizedBox(
                  height: 150,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Item name",
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 336,
                        height: 60,
                        child: TextFormField(
                          controller: categoryIdController,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6C7178)),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff262632), width: 1.0)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Item Discription",
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 336,
                        height: 60,
                        child: TextFormField(
                          controller: categoryNameController,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6C7178)),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff262632), width: 1.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                ElevatedButton(
                    onPressed: (() {
                      _getImage();
                    }),
                    child: Text('Add image')),
                SizedBox(height: 40),
                ElevatedButton(
                    onPressed: (() {
                      formLogin();
                    }),
                    child: InkWell(
                      child: Text('Upload file'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                    )),
              ]),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Don’t have account?",
              //       style: GoogleFonts.inter(
              //         decoration: TextDecoration.none,
              //         fontSize: 14,
              //         fontWeight: FontWeight.w500,
              //         color: Color(0xff6C7178),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 7,
              //     ),
              //     InkWell(
              //       child: Text(
              //         "Create a new account",
              //         style: GoogleFonts.inter(
              //           decoration: TextDecoration.none,
              //           fontSize: 14,
              //           fontWeight: FontWeight.w500,
              //           color: Color(0xffFC7508),
              //         ),
              //       ),
              //       onTap: () {},
              //     ),
              //   ],
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
