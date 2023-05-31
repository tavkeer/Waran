import 'package:waran/screens.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //height of the device
    final double height = MediaQuery.of(context).size.height;

    //width of the device
    final double width = MediaQuery.of(context).size.width;

    //
    //      Also i need to add a search feature in this page for convinence
    //
    //

    //

    //

    //
    //remember to get the data or model from previous class
    final List<HikingDataModel> data = HikingDataModel.data;
    debugPrint("height: $height\nwidth:$width");

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return CategoryListPageItem(
                data: data[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
