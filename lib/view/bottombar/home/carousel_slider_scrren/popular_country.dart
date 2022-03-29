import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../comman_widget/Container.dart';
import '../model/best_book_seller.dart';

class PopularCountry extends StatelessWidget {
  const PopularCountry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Graphic Novels:Manga",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.03, vertical: Get.height * 0.01),
        child: ListView.builder(
          itemCount: popularbook.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: Get.height * 0.01),
              child: CommanContainer(
                title: popularbook[index].title,
                images: popularbook[index].images,
                price: popularbook[index].price,
              ),
            );
          },
        ),
      ),
    );
  }
}
