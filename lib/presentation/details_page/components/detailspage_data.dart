import 'package:waran/screens.dart';

class DetailsPageData extends StatelessWidget {
  final dynamic data;
  const DetailsPageData({
    Key? key,
    required this.data,
  }) : super(key: key);

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
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                data.text,
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.urbanist().fontFamily,
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: Get.width / (2 * 3),
                children: [
                  UsefulDetails(details: data.altitude),
                  UsefulDetails(details: data.distance),
                  UsefulDetails(details: data.hard),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "${data.desc}${data.desc}",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: GoogleFonts.urbanist().fontFamily,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
