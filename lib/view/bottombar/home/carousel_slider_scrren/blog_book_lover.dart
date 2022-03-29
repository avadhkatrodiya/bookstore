import 'package:bookstore_app/utility/colors.dart';
import 'package:bookstore_app/utility/image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/blog_model.dart';

class BookLover extends StatelessWidget {
  const BookLover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog"),
      ),
      body: Container(
        color: ColorUtility.grey.withOpacity(0.2),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: Get.height * 0.25,
                    crossAxisSpacing: Get.width * 0.035,
                    mainAxisSpacing: Get.width * 0.03,
                  ),
                  itemCount: bolgdata.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: ColorUtility.whitecolor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: Get.height * 0.1,
                            width: Get.width,
                            child: Image.asset(
                              bolgdata[index].images,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          Center(
                            child: Text(
                              bolgdata[index].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
