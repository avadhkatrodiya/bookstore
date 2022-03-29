import 'package:bookstore_app/routes/screen_routes.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomescreenController extends GetxController {
  CarouselController carouselController = CarouselController();

  int _curantpage = 0;

  set curantpage(int value) {
    _curantpage = value;
    update();
  }

  int get curantpage => _curantpage;
}
