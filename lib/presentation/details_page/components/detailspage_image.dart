import 'package:waran/screens.dart';

class DetailsPageImage extends StatelessWidget {
  const DetailsPageImage({
    super.key,
    required this.data,
  });

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.43,
      width: Get.width,
      child: Image.network(
        data.imgLink,
        fit: BoxFit.cover,
      ),
    );
  }
}
