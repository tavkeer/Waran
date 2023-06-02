import 'package:waran/screens.dart';

class CustomIconbutton extends StatelessWidget {
  final IconData icon;
  final void Function()? ontap;
  const CustomIconbutton({
    Key? key,
    required this.icon,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: ontap,
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: scaffoldColor,
              border: Border.all(
                width: 0.5,
                color: Colors.grey.shade400,
              ),
            ),
            child: Icon(
              icon,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
