import 'package:waran/presentation/landing_page/components/main_content.dart';
import 'package:waran/screens.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final double height = Get.height;
    // final double width = Get.width;
    return const Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          //background image
          LandinPageImage(),

          //main Content
          MainContent(),
        ],
      ),
    );
  }
}
