import 'package:flutter_web/material.dart';
import 'package:portfolio_website/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Amadi Promise",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "GoogleSansRegular",
        primaryColorDark: Colors.black,
      ),
      home: ProfilePage(),
    );
  }
}
