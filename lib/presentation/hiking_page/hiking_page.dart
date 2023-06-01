import 'package:waran/screens.dart';

class HikingPage extends StatelessWidget {
  final int index;
  const HikingPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 57),
        child: CommonAppBar(),
      ),
      body: CategoryListPage(
        data: CategroyDataModel.data[index].modelData,
      ),
    );
  }
}
