import 'package:flutter/material.dart';
import 'package:true_card/screens/alternateHomeScreen.dart';
import 'package:true_card/screens/homescreen.dart';
import 'package:true_card/screens/personDetails.dart';
import 'package:true_card/screens/recommendedCards.dart';
import 'package:true_card/screens/selectCategories.dart';
import 'package:true_card/screens/selectPlatforms.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:true_card/screens/splashscreen.dart';
import 'firebase_options.dart';


void main() async{
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen()
    );
  }
}

