
import 'package:untitled/inheritance/base_screen.dart';
import 'package:untitled/inheritance/slider_mixin.dart';

main(){
  FavScreen favScreen = FavScreen("favscreen");
  favScreen.onSliderChange();
}

class FavScreen extends BaseScreen with SliderMixin{
  FavScreen(super.screenName);


  @override
  void getDtata() {
    // TODO: implement getDtata

  }
}