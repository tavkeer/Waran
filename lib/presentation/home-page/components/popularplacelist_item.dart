import 'package:waran/screens.dart';

class PopularPlaceListItem extends StatelessWidget {
  const PopularPlaceListItem({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.desc,
  }) : super(key: key);

  final String imagePath;
  final String text;
  final String desc;

  @override
  Widget build(BuildContext context) {
    //height of the device
    final double height = MediaQuery.of(context).size.height;

    //width of the device
    final double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: height * 0.2,
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
            ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  height: width * 0.23,
                  width: width * 0.23,
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.keyboard_arrow_right_sharp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                desc,
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
