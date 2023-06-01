import 'package:waran/screens.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<DemoDataModel> data = DemoDataModel.data;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 57),
        child: CommonAppBar(),
      ),
      body: CategoryListPage(
        data: data,
      ),
    );
  }
}
