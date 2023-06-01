import 'package:flutter/cupertino.dart';
import 'package:waran/screens.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
    required this.tabController,
  });

  final TabGetXController tabController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appbarColor,
      title: const Text(
        "WARAN",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.bell,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () => Get.to(
            () => const ProfilePage(),
          ),
          icon: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
      ],
      bottom: TabBar(
        controller: tabController.controller,
        splashFactory: NoSplash.splashFactory,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.white,
        tabs: const [
          Tab(
            child: Text(
              'Category',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Popular',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
