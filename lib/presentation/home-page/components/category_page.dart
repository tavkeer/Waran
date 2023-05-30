import 'package:waran/screens.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //height of the device
    final double height = MediaQuery.of(context).size.height;

    //width of the device
    final double width = MediaQuery.of(context).size.width;

    debugPrint("height: $height\nwidth:$width");
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CategoryListItem(
              imagePath: 'assets/campingIcon.png',
              desc:
                  "Discover nature's embrace, ignite campfires, and create lasting memories in the serene beauty of camping.",
              text: "Camping",
            ),
            SizedBox(height: 10),
            CategoryListItem(
              imagePath: 'assets/hikingIcon.png',
              desc:
                  "Embark on exhilarating trails, conquer breathtaking peaks, and immerse yourself in the awe-inspiring wonders of hiking adventures.",
              text: "Hiking",
            ),
            SizedBox(height: 10),
            CategoryListItem(
              imagePath: 'assets/lakesIcon.png',
              desc:
                  "Indulge in serenity as you explore the pristine beauty of alpine lakes, where tranquility and breathtaking vistas harmoniously unite.",
              text: "Alpine Lakes",
            ),
            SizedBox(height: 10),
            CategoryListItem(
              imagePath: 'assets/mountainIcon.png',
              desc:
                  "Challenge your limits, conquer towering summits, and unveil the extraordinary world of mountaineering, where triumph and awe await.",
              text: "Mountaineering",
            ),
            SizedBox(height: 10),
            CategoryListItem(
              imagePath: 'assets/peeks.png',
              desc:
                  "Challenge your limits, conquer towering summits, and unveil the extraordinary world of mountain peeks, where triumph and awe await.",
              text: "Mountain Peaks",
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
