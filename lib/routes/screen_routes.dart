import 'package:bookstore_app/view/bottombar/book_store/bookstoresscreen.dart';
import 'package:bookstore_app/view/bottombar/favorit_bookscreen/favoritbookscreen.dart';
import 'package:bookstore_app/view/bottombar/home/homescreen.dart';
import 'package:bookstore_app/view/bottombar/menuscreen/bookcategoriesscreen/Biography.dart';
import 'package:bookstore_app/view/bottombar/menuscreen/menuscreen.dart';
import 'package:bookstore_app/view/bottomscreen.dart';
import 'package:bookstore_app/view/splashscreen.dart';
import 'package:bookstore_app/view/webview/blackwells_book.dart';
import 'package:bookstore_app/view/webview/book_depository.dart';
import 'package:get/get.dart';
import '../view/bottombar/home/carousel_slider_scrren/blog_book_lover.dart';
import '../view/bottombar/home/carousel_slider_scrren/children_book.dart';
import '../view/bottombar/home/carousel_slider_scrren/comingsoon_bestsellers.dart';
import '../view/bottombar/home/carousel_slider_scrren/eu_vat_2021.dart';
import '../view/bottombar/home/carousel_slider_scrren/free_shipping.dart';
import '../view/bottombar/home/carousel_slider_scrren/manga_bestsellers.dart';
import '../view/bottombar/home/carousel_slider_scrren/popular_country.dart';
import '../view/bottombar/home/comman_widget/Container.dart';
import '../view/bottombar/menuscreen/bookcategoriesscreen/art&photography.dart';
import '../view/webview/fishpon.dart';

class RouteUtilities {
  static const root = "/";
  static const splashscreen = "/splashscreen";
  static const bottomScreen = "/bottomScreen";
  static const homescreen = "/homescreen";
  static const menuscreen = "/menuscreen";
  static const searchScreen = "/searchScreen";
  static const favoritBookScreen = "/favoritBookScreen";
  static const bookStoreScreen = "/bookStoreScreen";
  static const bookDepository = "/bookDepository";
  static const blackWellBook = "/blackWellBook";
  static const bookLover = "/bookLover";
  static const childrenBook = "/childrenBook";
  static const comingSoonBestSellers = "/comingSoonBestSellers";
  static const euvat2021 = "/euvat2021";
  static const freeShipping = "/freeShipping";
  static const mangaBestSellers = "/mangaBestSellers";
  static const popularCountry = "/popularCountry";
  static const commanContainer = "/commanContainer";
  static const fishpond = "/fishpond";
  static const artAndPhotography = "/artAndPhotography";
  static const bioGraphy = "/bioGraphy";

  static List<GetPage> getpage = [
    GetPage(name: root, page: () => Splashscreen()),
    GetPage(name: bottomScreen, page: () => BottomScreen()),
    GetPage(name: homescreen, page: () => Homescreen()),
    GetPage(name: menuscreen, page: () => MenuScreen()),
    GetPage(name: favoritBookScreen, page: () => FavoritBookScreen()),
    GetPage(name: bookStoreScreen, page: () => BookStoreScreen()),
    GetPage(name: bookDepository, page: () => BookDepository()),
    GetPage(name: blackWellBook, page: () => BlackWellBook()),
    GetPage(name: bookLover, page: () => BookLover()),
    GetPage(name: childrenBook, page: () => ChildrenBook()),
    GetPage(name: comingSoonBestSellers, page: () => ComingSoonBestSellers()),
    GetPage(name: euvat2021, page: () => EUVAT2021()),
    GetPage(name: freeShipping, page: () => FreeShipping()),
    GetPage(name: mangaBestSellers, page: () => MangaBestSellers()),
    GetPage(name: popularCountry, page: () => PopularCountry()),
    GetPage(name: commanContainer, page: () => CommanContainer()),
    GetPage(name: fishpond, page: () => Fishpond()),
    GetPage(name: artAndPhotography, page: () => ArtAndPhotography()),
    GetPage(name: bioGraphy, page: () => BioGraphy()),
  ];
}
