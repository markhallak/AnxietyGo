import 'package:anxiety_go/pages/Login.dart';
import 'package:flutter/material.dart';

import 'package:anxiety_go/shared/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Uncomment this if you want to use the db
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnxietyGo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primary,
      ),
      home: const LoginPage(),
    );
  }
}
