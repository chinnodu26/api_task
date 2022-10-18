import 'dart:convert';

import 'package:api_task/models/getPost_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:api_task/models/getPost_api.dart';

class gridView extends StatelessWidget {
  const gridView({
    required this.categoryId,
    required this.categoryName,
    required this.categoryImage,
  });
  final String categoryId;
  final String categoryName;
  final String categoryImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.symmetric(horizontal: 0.0),
      width: 165,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFFFFFF),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 5,
        ),
        Center(
          child: InkWell(
            child: Image.network(
              categoryImage,
              width: 100,
              height: 100,
            ),
            onTap: () {},
          ),
        ),
        // InkWell(
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //       child: Text(categoryId,
        //           style: GoogleFonts.inter(
        //               decoration: TextDecoration.none,
        //               fontSize: 15,
        //               fontWeight: FontWeight.w500,
        //               color: Color(0xff121212))),
        //     ),
        //     onTap: () {}),
        SizedBox(
          height: 2,
        ),
        InkWell(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(categoryName,
                style: GoogleFonts.inter(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff121212))),
          ),
          onTap: () {},
        ),
      ]),
    );
  }
}
