import 'package:bookstore_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/homescreen_controller.dart';
import '../../../model/popular_categori_model.dart';
import '../../../routes/screen_routes.dart';
import 'model/book_store_model.dart';

class BookStoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.02,
              ),
              Text(
                "Bookstores:free shipping",
                style: TextStyle(
                  fontSize: Get.height * 0.022,
                  color: ColorUtility.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Container(
                height: Get.height * 0.25,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.withOpacity(0.2),
                    );
                  },
                  itemCount: bookstoredata.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(bookstoredata[index].screen);
                      },
                      child: Container(
                        height: Get.height * 0.06,
                        padding:
                            EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: ColorUtility.grey.withOpacity(0.3),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            bookstoredata[index].text,
                            style: TextStyle(
                              color: ColorUtility.deepPurple,
                              fontSize: Get.height * 0.018,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: Text(
                  "Free Shipping",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: ColorUtility.blueAccent,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteUtilities.bookDepository);
                    },
                    child: Container(
                      height: Get.height * 0.1,
                      width: Get.width * 0.4,
                      decoration: BoxDecoration(
                        color: ColorUtility.whitecolor,
                        borderRadius: BorderRadius.circular(
                          Get.height * 0.01,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.book_online_outlined,
                                color: ColorUtility.lightBluecolor,
                              ),
                              Text(
                                "Book Depository",
                                style: TextStyle(
                                  color: ColorUtility.deepPurple,
                                  fontSize: Get.height * 0.018,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Free shipping",
                            style: TextStyle(
                              fontSize: Get.height * 0.018,
                              color: ColorUtility.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteUtilities.blackWellBook);
                    },
                    child: Container(
                      height: Get.height * 0.1,
                      width: Get.width * 0.3,
                      decoration: BoxDecoration(
                        color: ColorUtility.whitecolor,
                        borderRadius: BorderRadius.circular(
                          Get.height * 0.01,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.book_outlined,
                                color: ColorUtility.lightBluecolor,
                              ),
                              Text(
                                "Blackwell's",
                                style: TextStyle(
                                  color: ColorUtility.deepPurple,
                                  fontSize: Get.height * 0.018,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Free shipping",
                            style: TextStyle(
                              fontSize: Get.height * 0.018,
                              color: ColorUtility.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Center(
                child: Text(
                  "Popular Categories",
                  style: TextStyle(
                    color: ColorUtility.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Container(
                height: Get.height * 0.15,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: Get.height * 0.06,
                    crossAxisSpacing: Get.width * 0.03,
                    mainAxisSpacing: Get.width * 0.03,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          bookdata[index].screen,
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorUtility.whitecolor,
                          borderRadius:
                              BorderRadius.circular(Get.height * 0.01),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "${bookdata[index].title}",
                            style: TextStyle(
                              fontSize: Get.height * 0.018,
                              color: ColorUtility.deepPurple,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
