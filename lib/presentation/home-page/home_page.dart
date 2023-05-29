import 'package:waran/screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TabGetXController tabController = Get.put(TabGetXController());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 100),
        child: HomePageAppBar(tabController: tabController),
      ),
      body: GetBuilder<TabGetXController>(
        builder: (controller) => TabBarView(
          controller: tabController.controller,
          children: const [
            // Content of the 'Home' tab
            Center(child: Text('categories')),

            // Content of the 'Settings' tab
            Center(child: Text('popular')),
          ],
        ),
      ),
    );
  }
}
