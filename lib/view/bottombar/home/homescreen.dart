import 'dart:ui';
import 'package:bookstore_app/controller/homescreen_controller.dart';
import 'package:bookstore_app/model/popular_categori_model.dart';
import 'package:bookstore_app/utility/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/screen_routes.dart';
import 'model/carouselslider_model.dart';

class Homescreen extends StatelessWidget {
  HomescreenController _homescreenController = Get.put(HomescreenController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomescreenController>(builder: (controller) {
      return Container(
        color: ColorUtility.whitecolor.withOpacity(0.7),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                CarouselSlider(
                  carouselController: _homescreenController.carouselController,
                  items: [0, 1, 2, 3, 4, 5, 6].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(carouseldata[i].screenpath);
                          },
                          child: Container(
                            width: Get.width * 45,
                            margin: EdgeInsets.symmetric(
                                horizontal: Get.width * 0.005),
                            decoration: BoxDecoration(
                              color: ColorUtility.whitecolor,
                              borderRadius:
                                  BorderRadius.circular(Get.height * 0.02),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  carouseldata[i].image,
                                ),
                              ),
                            ),
                            child: ClipRect(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 0.5,
                                  sigmaY: 0.5,
                                ),
                                child: Center(
                                  child: Text(
                                    carouseldata[i].text,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorUtility.whitecolor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    onPageChanged: (val, _) {
                      _homescreenController.curantpage = val;
                      print("=============${_homescreenController.curantpage}");
                    },
                    enlargeCenterPage: true,
                    aspectRatio: 1.4 / 1,
                    viewportFraction: 0.45,
                    initialPage: 0,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    7,
                    (index) => Container(
                      height: Get.height * 0.015,
                      width: Get.width * 0.03,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: _homescreenController.curantpage == index
                            ? Colors.grey
                            : Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(Get.height * 0.01),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  "Compare book prices",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: ColorUtility.deepPurple,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "Free shipping",
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorUtility.deepPurple,
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
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteUtilities.bookStoreScreen);
                  },
                  child: Container(
                    height: Get.height * 0.05,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: ColorUtility.orange,
                      borderRadius: BorderRadius.circular(Get.height * 0.01),
                    ),
                    child: Center(
                      child: Text(
                        "List of bookstores",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
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
    });
  }
}
