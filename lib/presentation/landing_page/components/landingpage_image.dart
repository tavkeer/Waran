import 'package:waran/screens.dart';

class LandinPageImage extends StatelessWidget {
  const LandinPageImage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        "assets/landing.jpeg",
        fit: BoxFit.cover,
      ),
    );
  }
}
