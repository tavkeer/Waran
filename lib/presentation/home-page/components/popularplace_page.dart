import 'package:waran/screens.dart';

class PopularPlacesPage extends StatelessWidget {
  const PopularPlacesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  //height of the device
    // final double height = MediaQuery.of(context).size.height;

    // //width of the device
    // final double width = MediaQuery.of(context).size.width;
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            PopularPlaceListItem(
              imagePath:
                  "https://images.unsplash.com/photo-1531520140596-076b6929bc69?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
              text: "Gulmarag",
              desc:
                  "Gulmarag is a picturesque hill station in Kashmir known for its stunning natural beauty and captivating meadows.",
            ),
            SizedBox(height: 10),
            PopularPlaceListItem(
              imagePath:
                  "https://images.unsplash.com/photo-1612026342893-4d76f8a61d5c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
              text: "Pahalgam",
              desc:
                  "Pahalgam, nestled in Kashmir, is a picturesque town surrounded by snow-capped mountains, gushing rivers, and enchanting pine forests.",
            ),
            SizedBox(height: 10),
            PopularPlaceListItem(
              imagePath:
                  "https://images.unsplash.com/photo-1668173574882-ed8b4be687b0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1035&q=80",
              text: "Doodhpathri",
              desc:
                  "Doodhpathri, located in Kashmir, is a tranquil meadow blessed with pristine beauty, gushing streams, and lush green pastures.",
            ),
            SizedBox(height: 10),
            PopularPlaceListItem(
              imagePath:
                  "https://images.unsplash.com/photo-1560853950-2502ec2ab867?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2160&q=80",
              text: "Dal Lake",
              desc:
                  "Dal Lake is a serene and iconic lake in Kashmir, famous for its charming houseboats, floating gardens, and scenic surroundings.",
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
