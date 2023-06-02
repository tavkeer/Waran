import 'package:waran/screens.dart';

class MapDownloadButtton extends StatelessWidget {
  const MapDownloadButtton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: appbarColor,
      child: const Icon(
        Icons.download_rounded,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
