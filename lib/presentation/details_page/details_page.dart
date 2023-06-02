import 'package:waran/screens.dart';

class DetailsPage extends StatelessWidget {
  final dynamic data;
  const DetailsPage({
    Key? key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double usableHeight = Get.height - 60;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 57),
        child: CommonAppBar(title: "Explore"),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: SizedBox(
                height: usableHeight * 0.38,
                width: Get.width,
                child: Image.network(
                  data.imgLink,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: usableHeight * 0.639,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
