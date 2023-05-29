import 'screens.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Tourist or Hikers Guide App",
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.ubuntu().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
