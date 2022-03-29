import 'package:bookstore_app/view/bottombar/home/model/best_book_seller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../comman_widget/Container.dart';

class ChildrenBook extends StatelessWidget {
  const ChildrenBook({Key? key}) : super(key: key);

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
          itemCount: childrenbook.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: Get.height * 0.01),
              child: CommanContainer(
                title: childrenbook[index].title,
                images: childrenbook[index].images,
                price: childrenbook[index].price,
              ),
            );
          },
        ),
      ),
    );
  }
}
