import 'package:waran/screens.dart';

class UsefulDetails extends StatelessWidget {
  final String details;
  const UsefulDetails({
    Key? key,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(width: 1, color: appbarColor),
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade100,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          details,
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
