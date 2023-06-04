import 'package:waran/presentation/email_login_option/emailogin_option.dart';
import 'package:waran/screens.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;
    return SizedBox(
      height: height,
      width: width,
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Explore. Discover.\nNetwork.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                height: 1.4,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Embrace the Outdoors: Your Essential Hiking and Camping Companion",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 30),

            //login with google animated button
            GoogleSignIn(),
            SizedBox(height: 20),

            //divider section
            DividerWithMiddleText(text: "or"),

            SizedBox(height: 10),
            //other login option like email
            OtherLoginOption(),
          ],
        ),
      ),
    );
  }
}

class OtherLoginOption extends StatelessWidget {
  const OtherLoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const EmailLoginPage(),
          transition: Transition.rightToLeft),
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Continue with email",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.2,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class DividerWithMiddleText extends StatelessWidget {
  final String text;
  const DividerWithMiddleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.grey[400],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
