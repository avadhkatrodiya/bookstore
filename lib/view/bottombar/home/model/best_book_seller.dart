import 'package:bookstore_app/utility/image.dart';

class BookSeller {
  String? images;
  String? title;
  String? price;

  BookSeller({
    this.title,
    this.images,
    this.price,
  });
}

List mangabestsellers = [
  BookSeller(
    images: ImageUtility.Grandmasterdomonic,
    title: "Grandmaster of Demonic",
    price: "1577",
  ),
  BookSeller(
    images: ImageUtility.newLicense,
    title: "New License #3: Vol.1 from seve",
    price: "1577",
  ),
];

List popularbook = [
  BookSeller(
    images: ImageUtility.onething,
    title: "The One Thing",
    price: "724",
  ),
  BookSeller(
    images: ImageUtility.structureandinterpretation,
    price: "3756",
    title: "Structure and interpretation",
  ),
];

List childrenbook = [
  BookSeller(
    images: ImageUtility.zoo,
    title: "Dear Zoo",
    price: "594",
  ),
  BookSeller(
    price: "720",
    title: "Giraffes Can't Dance",
    images: ImageUtility.giraffes,
  ),
];

List commingsoonbook = [
  BookSeller(
    images: ImageUtility.Heaven_official,
    title: "Heaven Official's Blessing",
    price: "1367",
  ),
  BookSeller(
    images: ImageUtility.scum_villain,
    title: "The Scum Villain's Self-saving...",
    price: "1367",
  ),
];

List artandphotography = [
  BookSeller(
    images: ImageUtility.Enchanted_forest,
    title: "Enchanted Forest",
    price: "1287",
  ),
  BookSeller(
    images: ImageUtility.qabook,
    title: "Potter Gift",
    price: "1121",
  )
];

List biography = [
  BookSeller(
    images: ImageUtility.Goingtohurt,
    title: "This is Going to Hurt",
    price: "693",
  ),
  BookSeller(
    images: ImageUtility.Educated,
    title: "Educated",
    price: "924",
  ),
];
