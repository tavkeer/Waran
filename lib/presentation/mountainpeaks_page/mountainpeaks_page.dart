import 'package:waran/screens.dart';

class MounainPeaksPage extends StatelessWidget {
  final int index;
  const MounainPeaksPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoryListPage(
      data: CategroyDataModel.data[index].modelData,
    );
  }
}
