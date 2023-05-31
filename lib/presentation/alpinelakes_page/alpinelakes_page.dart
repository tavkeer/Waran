import 'package:waran/screens.dart';

class AlpineLakesPage extends StatelessWidget {
  final int index;
  const AlpineLakesPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //data list for all the locations in the database
    final List dataList = CategroyDataModel.data[index].modelData;

    //till now it is only local data base

    return CategoryListPage(
      data: dataList,
    );
  }
}
