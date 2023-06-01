import 'package:waran/screens.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 57),
          child: CommonAppBar(
            title: "Profile",
          ),
        ),
        body: Center(
          child: Text("ProfilePage"),
        ));
  }
}
