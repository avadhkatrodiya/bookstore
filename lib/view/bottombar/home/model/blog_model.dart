import 'package:bookstore_app/utility/image.dart';

class Booklover {
  String? title;
  String? images;
  Booklover({this.images, this.title});
}

List bolgdata = [
  Booklover(
    images: ImageUtility.booklove,
    title: "Book Lovers day:August 9",
  ),
  Booklover(
    title: "Affordable School and College Textbooks",
    images: ImageUtility.textbook,
  ),
];
