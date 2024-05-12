import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

// to make a variable observable, use obs or Rxdart class
// to make a widget observable using get, use Obx() or GetxBuilder()

class CountCntroller extends GetxController{

  //RxInt or var can be used since we use getx controller
  var count = 0.obs;  /// obs means this integer value is observable

void increment(){
  count++;
}
void decrement(){
  count--;
}

}