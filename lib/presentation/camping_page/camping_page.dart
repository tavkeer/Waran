// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:waran/screens.dart';

class CampingPage extends StatelessWidget {
  final int index;
  const CampingPage({
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
