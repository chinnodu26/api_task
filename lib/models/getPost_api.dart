// To parse this JSON data, do
//
//     final getPost = getPostFromJson(jsonString);

import 'dart:convert';

GetPost getPostFromJson(String str) => GetPost.fromJson(json.decode(str));

String getPostToJson(GetPost data) => json.encode(data.toJson());

class GetPost {
  GetPost({
    this.name,
    this.discount,
    this.image,
    this.address,
    this.timing,
    this.data,
  });

  String? name;
  String? discount;
  String? image;
  String? address;
  String? timing;
  List<Datum>? data;

  factory GetPost.fromJson(Map<String, dynamic> json) => GetPost(
        name: json["name"] == null ? null : json["name"],
        discount: json["discount"] == null ? null : json["discount"],
        image: json["image"] == null ? null : json["image"],
        address: json["address"] == null ? null : json["address"],
        timing: json["timing"] == null ? null : json["timing"],
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "discount": discount == null ? null : discount,
        "image": image == null ? null : image,
        "address": address == null ? null : address,
        "timing": timing == null ? null : timing,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.categoryId,
    this.categoryName,
    this.categoryImage,
  });

  int? categoryId;
  String? categoryName;
  String? categoryImage;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        categoryId: json["category_id"] == null ? null : json["category_id"],
        categoryName:
            json["category_name"] == null ? null : json["category_name"],
        categoryImage:
            json["category_image"] == null ? null : json["category_image"],
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId == null ? null : categoryId,
        "category_name": categoryName == null ? null : categoryName,
        "category_image": categoryImage == null ? null : categoryImage,
      };
}
