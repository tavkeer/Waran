import 'package:waran/screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //initializing the tabView controller class
    final TabGetXController tabController = Get.put(TabGetXController());

    //height of the device
    final double height = MediaQuery.of(context).size.height;

    //width of the device
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, height * 0.13),
        child: HomePageAppBar(tabController: tabController),
      ),
      body: GetBuilder<TabGetXController>(
        builder: (controller) => TabBarView(
          controller: tabController.controller,
          children: [
            // Content of the 'category' tab
            const CategoryPage(),

            // Content of the 'popular-places' tab
            PopularPlacesPage(height: height, width: width),
          ],
        ),
      ),
    );
  }
}
