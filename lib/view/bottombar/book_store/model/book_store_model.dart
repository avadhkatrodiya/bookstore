import 'package:bookstore_app/routes/screen_routes.dart';
import 'package:flutter/material.dart';

class BookStoreModel {
  String? text;
  String? screen;
  BookStoreModel({this.text, this.screen});
}

List bookstoredata = [
  BookStoreModel(
      text: "Book Depository", screen: RouteUtilities.bookDepository),
  BookStoreModel(
      text: "BlackWells Books", screen: RouteUtilities.blackWellBook),
  BookStoreModel(text: "Fishpond.com", screen: RouteUtilities.fishpond),
];
