
import 'package:untitled/inheritance/base_screen.dart';
import 'package:untitled/inheritance/base.dart';
import 'package:untitled/inheritance/slider_interface.dart';

class HomeScreen extends BaseScreen implements SliderInterface{
  HomeScreen(super.screenName);


@override
  void getDtata() {
    // TODO: implement getDtata

  }

  @override
  void onSlideChange() {
    // TODO: implement onSlideChange
  }

}