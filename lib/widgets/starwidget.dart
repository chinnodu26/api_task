import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:api_task/models/getPost_api.dart';

class starWidget extends StatelessWidget {
  const starWidget({this.address, this.time});
  final String? address;
  final String? time;

  Widget build(BuildContext context) {
    GetPost? getpost_model;
    return Container(
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
                          '${getpost_model.address}',
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
        ));
  }
}
