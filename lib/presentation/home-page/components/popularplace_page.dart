import 'package:waran/screens.dart';

class PopularPlacesPage extends StatelessWidget {
  const PopularPlacesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Model class instance for data list
    List data = PopularPlaceModel.popularPlaces;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return PopularPlaceListItem(
            data: data[index],
          );
        },
      ),
    );
  }
}
