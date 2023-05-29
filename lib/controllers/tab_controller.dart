import 'package:waran/screens.dart';

class TabGetXController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(
      length: 2, //no of tabs
      vsync: this,
    );
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
