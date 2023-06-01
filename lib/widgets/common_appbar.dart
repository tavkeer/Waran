import 'package:waran/screens.dart';

class CommonAppBar extends StatelessWidget {
  final String? title;
  const CommonAppBar({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appbarColor,
      title: Text(
        title ?? "Discover",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => Get.to(() => const ProfilePage()),
          icon: const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
