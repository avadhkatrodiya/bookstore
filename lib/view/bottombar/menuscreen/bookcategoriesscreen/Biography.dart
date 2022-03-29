import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/comman_widget/Container.dart';
import '../../home/model/best_book_seller.dart';

class BioGraphy extends StatelessWidget {
  const BioGraphy({Key? key}) : super(key: key);

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
          itemCount: biography.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: Get.height * 0.01),
              child: CommanContainer(
                title: biography[index].title,
                images: biography[index].images,
                price: biography[index].price,
              ),
            );
          },
        ),
      ),
    );
  }
}
