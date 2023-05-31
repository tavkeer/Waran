import 'package:waran/screens.dart';

class CategoryListPageItem extends StatelessWidget {
  const CategoryListPageItem({
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
            ListTile(
              contentPadding: const EdgeInsets.only(left: 20),
              leading: SizedBox(
                height: width * 0.13,
                width: width * 0.13,
                child: Text(
                  data.text.substring(0, 1),
                  style: TextStyle(
                    fontSize: width * 0.1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                data.text,
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
                data.shortdesc,
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
