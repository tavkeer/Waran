import 'package:waran/screens.dart';

class PopularPlaceListItem extends StatelessWidget {
  const PopularPlaceListItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    //height of the device
    final double height = MediaQuery.of(context).size.height;

    //width of the device
    final double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: height * 0.2,
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        height: width * 0.33,
                        width: width * 0.3,
                        child: Image.network(
                          data.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      data.text,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.keyboard_arrow_right_sharp),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data.desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: GoogleFonts.urbanist().fontFamily,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
