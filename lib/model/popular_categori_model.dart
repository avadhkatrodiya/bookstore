import 'package:bookstore_app/routes/screen_routes.dart';

class PopularCategory {
  String? title;
  String? screen;
  PopularCategory({this.screen, this.title});
}

List bookdata = [
  PopularCategory(
      title: "Manga Bestsellers", screen: RouteUtilities.mangaBestSellers),
  PopularCategory(
      title: "Popular Country", screen: RouteUtilities.popularCountry),
  PopularCategory(
      title: "Children's Book", screen: RouteUtilities.childrenBook),
  PopularCategory(
      title: "Commingsoon Book", screen: RouteUtilities.comingSoonBestSellers),
];
