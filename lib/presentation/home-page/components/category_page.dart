import 'package:waran/models/categroy_model.dart';
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

    final List<CategroyDataModel> data = CategroyDataModel.data;
    debugPrint("height: $height\nwidth:$width");

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return CategoryListItem(
            data: data[index],
          );
        },
      ),
    );
  }
}
