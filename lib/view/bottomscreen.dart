import 'package:bookstore_app/controller/bottomScreen_controller.dart';
import 'package:bookstore_app/routes/screen_routes.dart';
import 'package:bookstore_app/utility/colors.dart';
import 'package:bookstore_app/utility/image.dart';
import 'package:bookstore_app/view/bottombar/favorit_bookscreen/favoritbookscreen.dart';
import 'package:bookstore_app/view/bottombar/home/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import '../model/bottombar_model.dart';
import '../model/drawer_model.dart';
import 'bottombar/book_store/bookstoresscreen.dart';
import 'bottombar/menuscreen/menuscreen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  _BottomScreenState createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  void initState() {
    _bottomscreenController.pagecontroller();
    super.initState();
  }

  BottomscreenController _bottomscreenController =
      Get.put(BottomscreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomscreenController>(
      init: _bottomscreenController,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: _bottomscreenController.tabselecter == 0
                ? Text("Home")
                : _bottomscreenController.tabselecter == 1
                    ? Text("BookStore")
                    : _bottomscreenController.tabselecter == 2
                        ? Text("Categories")
                        : Text("My wishlist"),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorUtility.lightBluecolor,
                    ColorUtility.blueAccent,
                  ],
                ),
              ),
            ),
          ),
          drawer: Container(
            height: Get.height,
            width: Get.width * 0.7,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.23,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        ColorUtility.lightBluecolor,
                        ColorUtility.blueAccent,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: Get.height * 0.18,
                      width: Get.width * 0.36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Get.height * 0.02),
                        image: const DecorationImage(
                          image: AssetImage(
                            ImageUtility.bookimage,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: drawerItem.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          _bottomscreenController.selected = index;
                          switch (index) {
                            case 0:
                              {
                                Get.back();
                                _bottomscreenController.tabselecter = index;
                                _bottomscreenController.pageController!
                                    .jumpToPage(index);
                              }
                              break;
                            case 1:
                              {
                                Get.back();
                                _bottomscreenController.tabselecter = index;
                                _bottomscreenController.pageController!
                                    .jumpToPage(index);
                              }
                              break;

                            case 2:
                              {
                                Get.back();
                                Get.toNamed(RouteUtilities.bookDepository);
                              }
                              break;
                            case 3:
                              {
                                Get.back();
                                Get.toNamed(RouteUtilities.blackWellBook);
                              }
                              break;
                            case 4:
                              {
                                Share.share(
                                  "http://schemas.android.com/apk/res/android",
                                ).then(
                                  (value) => Get.back(),
                                );
                              }
                              break;
                            default:
                              {
                                print("null");
                              }
                              break;
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: _bottomscreenController.selected == index
                              ? Colors.grey.shade200
                              : Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: drawerItem[index].colors,
                                child: Icon(
                                  drawerItem[index].icon,
                                  color: ColorUtility.whitecolor,
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                drawerItem[index].title,
                                style: TextStyle(
                                  color: ColorUtility.blackcolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: Get.height * 0.08,
              width: Get.width,
              decoration: BoxDecoration(
                color: ColorUtility.whitecolor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    4,
                    (index) => GestureDetector(
                      onTap: () {
                        _bottomscreenController.tabselecter = index;
                        _bottomscreenController.pageController!
                            .jumpToPage(index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(
                          bottomBarData[index].iconData,
                          color: _bottomscreenController.tabselecter == index
                              ? Colors.blue
                              : Colors.blueAccent.withOpacity(0.5),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: Container(
            color: ColorUtility.grey.withOpacity(0.3),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteUtilities.bookDepository);
                      },
                      child: Container(
                        height: Get.height * 0.05,
                        width: Get.width * 0.4,
                        decoration: BoxDecoration(
                          color: ColorUtility.whitecolor,
                          borderRadius: BorderRadius.circular(
                            Get.height * 0.01,
                          ),
                        ),
                        child: Center(
                          child: Row(
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
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteUtilities.blackWellBook);
                      },
                      child: Container(
                        height: Get.height * 0.05,
                        width: Get.width * 0.3,
                        decoration: BoxDecoration(
                          color: ColorUtility.whitecolor,
                          borderRadius: BorderRadius.circular(
                            Get.height * 0.01,
                          ),
                        ),
                        child: Center(
                          child: Row(
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
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Expanded(
                  child: PageView(
                    controller: _bottomscreenController.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Homescreen(),
                      BookStoreScreen(),
                      MenuScreen(),
                      FavoritBookScreen(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
