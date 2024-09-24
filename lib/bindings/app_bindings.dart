import 'package:get/get.dart';
import 'package:music_library/controller/bottom_nav_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
  }
}