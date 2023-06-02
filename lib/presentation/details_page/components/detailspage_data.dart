import 'package:waran/screens.dart';

class DetailsPageData extends StatelessWidget {
  const DetailsPageData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.63,
      width: Get.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: const Center(
        child: Text(
          "DemoData",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
