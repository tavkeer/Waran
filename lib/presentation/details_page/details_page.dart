import 'package:waran/screens.dart';

class DetailsPage extends StatelessWidget {
  final dynamic data;
  const DetailsPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 57),
        child: CommonAppBar(
          title: "Explore",
        ),
      ),
      body: Center(
        child: Text(
          data.text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
