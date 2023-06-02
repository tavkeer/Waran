import 'package:waran/screens.dart';

class DetailsPage extends StatelessWidget {
  final dynamic data;
  const DetailsPage({
    Key? key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            //leading image of details page
            Positioned(top: 0, child: DetailsPageImage(data: data)),

            //main data or description of details page
            const Positioned(bottom: 0, child: DetailsPageData()),

            //app bar icons of the details page ///back screen icon
            CustomIconbutton(icon: Icons.arrow_back, ontap: () => Get.back()),

            //app bar icons of the details page ///profile screen icon
            Positioned(
              right: 0,
              child: CustomIconbutton(
                icon: Icons.person,
                ontap: () => Get.to(
                  () => const ProfilePage(),
                ),
              ),
            ),
          ],
        ),
      ),

      //custom floating action button for downloading maps example gpx file
      floatingActionButton: const MapDownloadButtton(),
    );
  }
}
