import 'package:waran/screens.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;
    return SizedBox(
      height: height,
      width: width,
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Explore. Discover.\nNetwork.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                height: 1.4,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Embrace the Outdoors: Your Essential Hiking and Camping Companion",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 20),
            InsideButton(),
          ],
        ),
      ),
    );
  }
}
