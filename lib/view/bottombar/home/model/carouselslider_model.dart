import 'package:bookstore_app/utility/image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../routes/screen_routes.dart';

class CarouselSliderModel {
  String? image;
  String? text;
  Color? color;
  String? screenpath;
  CarouselSliderModel({this.text, this.image, this.color, this.screenpath});
}

List carouseldata = [
  CarouselSliderModel(
    image: ImageUtility.mangaBestsellers,
    text: "Manga BestSellers",
    screenpath: RouteUtilities.mangaBestSellers,
  ),
  CarouselSliderModel(
    image: ImageUtility.freeshipping,
    text: "Free Shipping",
    screenpath: RouteUtilities.freeShipping,
  ),
  CarouselSliderModel(
    image: ImageUtility.popularcountry,
    text: "Popular in your country",
    screenpath: RouteUtilities.popularCountry,
  ),
  CarouselSliderModel(
    image: ImageUtility.booklover,
    text: "Blog for book lovers",
    screenpath: RouteUtilities.bookLover,
  ),
  CarouselSliderModel(
      image: ImageUtility.euvat,
      text: "About EU VAT 2021",
      screenpath: RouteUtilities.euvat2021),
  CarouselSliderModel(
    image: ImageUtility.childrenbook,
    text: "Children's Books Bestsellers",
    screenpath: RouteUtilities.childrenBook,
  ),
  CarouselSliderModel(
    image: ImageUtility.commingSoon,
    text: "Coming soon Bestsellers",
    screenpath: RouteUtilities.comingSoonBestSellers,
  ),
];
