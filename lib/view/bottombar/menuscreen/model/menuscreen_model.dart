import 'package:bookstore_app/routes/screen_routes.dart';

class MenuscreenModel {
  String? text;
  String? screen;
  MenuscreenModel({this.screen, this.text});
}

List bookcategoriesdata = [
  MenuscreenModel(
      text: "Art & Photography", screen: RouteUtilities.artAndPhotography),
  MenuscreenModel(text: "Biography", screen: RouteUtilities.bioGraphy),
  MenuscreenModel(
      text: "Menga Bestsellers", screen: RouteUtilities.mangaBestSellers),
  MenuscreenModel(
      text: "Popular Country", screen: RouteUtilities.popularCountry),
  MenuscreenModel(text: "Children's Book", screen: RouteUtilities.childrenBook),
  MenuscreenModel(
      text: "Commingsoon Book", screen: RouteUtilities.comingSoonBestSellers),
];
