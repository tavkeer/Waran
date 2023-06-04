import 'package:waran/screens.dart';

class EmailLoginPage extends StatelessWidget {
  const EmailLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Login with email",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            Wrap(
              direction: Axis.vertical,
              // alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                const Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    // fontSize: 25,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: Get.width - 30,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: InputBorder.none,
                      hintText: "Enter your email",
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: Get.width - 30,
                  child: const Text(
                    "We will send you a password to this email. You can enter that in the field and log into you account.",
                    style: TextStyle(
                      color: Colors.grey,
                      // fontWeight: FontWeight.w400,
                      // fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: const Text(
                    "Go back to Google Signin",
                    style: TextStyle(
                      color: appThemeColor,
                      fontWeight: FontWeight.w400,
                      // fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.grey.shade300,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: appThemeColor,
                  ),
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
