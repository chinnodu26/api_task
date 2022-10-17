import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Eatance Grocery'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
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
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
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
                    left: 20,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 text ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' text ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'text',
                                style: TextStyle(
                                    color: Colors.black,
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
                            Text(
                              'Address',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            SizedBox(
                              width: 150,
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
                              width: 10,
                            ),
                            Text(
                              '1:00 AM - 9:00 PM',
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
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Text',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Text',
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
            ]),
          ],
        ),
      ),
    );
  }
}
