import 'dart:convert';

import 'package:api_task/models/getPost_api.dart';
import 'package:api_task/widgets/gridview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:api_task/models/getPost_api.dart';
import 'package:api_task/widgets/starwidget.dart';
import 'package:api_task/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GetPost? getpost_model;
  bool loader = false;
  void GetData() async {
    try {
      var responce = await Dio().get(
        "http://jayanthi10.pythonanywhere.com/api/v1/list_category/",
      );
      setState(() {
        getpost_model = getPostFromJson(jsonEncode(responce.data));
        print("${responce.data}");
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    loader = true;
    // TODO: implement initState
    GetData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Eatance Grocery",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Stack(
                children: <Widget>[
                  Image.network(
                    'http://jayanthi10.pythonanywhere.com${getpost_model!.image}',
                    height: 250,
                    // width: double.infinity,
                    //fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      // alignment: Alignment.center,
                      child: Positioned(
                    top: 80,
                    left: 0.0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${getpost_model!.discount}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' ${getpost_model!.name} ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.redAccent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                //' ${getpost_model!.name} ',
                                'container',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
              Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                          // color: Colors.black54,
                          // blurRadius: 10.0,
                          //spreadRadius: 2.0,
                          // offset: Offset(5.0, 5.0),
                          ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(),
                            Icon(
                              Icons.location_on,
                              color: Colors.lightGreen,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            getpost_model == null
                                ? CircularProgressIndicator()
                                : Text(
                                    '${getpost_model!.address}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.call,
                              color: Colors.lightGreen,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.assistant_direction,
                              color: Colors.lightGreen,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.lightGreen,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.lightGreen,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.lightGreen,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.lightGreen,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star_half,
                              color: Colors.lightGreen,
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Icon(
                              Icons.schedule,
                              color: Colors.lightGreen,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '${getpost_model!.timing}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 350,
                  height: 75,
                  decoration: BoxDecoration(
                    //color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(12),

                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 126, 238, 216),
                          Color.fromARGB(255, 235, 240, 192)
                        ]),
                    boxShadow: [
                      BoxShadow(
                          // color: Colors.black54,
                          // blurRadius: 10.0,
                          //spreadRadius: 2.0,
                          // offset: Offset(5.0, 5.0),
                          ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Standard Delivary',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${getpost_model!.timing}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                              color: Colors.black87,
                              //fontWeight: FontWeight.w700,
                              fontSize: 60.0),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.electric_moped,
                          color: Colors.black,
                          size: 35,
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text("Shop by category ",
                            style: GoogleFonts.inter(
                                decoration: TextDecoration.none,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff121212))),
                      ),
                      InkWell(
                        child: Text("Add file",
                            style: GoogleFonts.inter(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff121212))),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return addFile();
                          }));
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  getpost_model == null
                      ? CircularProgressIndicator()
                      : Container(
                          height: 200,
                          child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: getpost_model!.data!.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 5 / 6,
                              crossAxisCount: 3,
                              crossAxisSpacing: 5.0,
                              mainAxisSpacing: 8.0,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                child: gridView(
                                  categoryId:
                                      '${getpost_model!.data![index].categoryId}',
                                  categoryName:
                                      '${getpost_model!.data![index].categoryName}',
                                  categoryImage:
                                      'http://jayanthi10.pythonanywhere.com${getpost_model!.data![index].categoryImage}',
                                ),
                                onTap: () {},
                              );
                            },
                          ),
                        ),
                ]),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
