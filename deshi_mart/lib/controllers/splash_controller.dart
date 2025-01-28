import 'package:deshi_mart/views/home_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    navigateToHome();
    super.onReady();
  }

  Future navigateToHome() async {
    await Future.delayed(Duration(seconds: 3));
    Get.to(HomeView());
  }
}
