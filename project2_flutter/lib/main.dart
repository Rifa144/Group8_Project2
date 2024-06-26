import 'package:flutter/material.dart';
import 'package:project2_flutter/screens/CreatePostScreen.dart';
import 'package:project2_flutter/screens/HomeScreen.dart';
import 'package:project2_flutter/screens/SplashScreenPage.dart';
import 'package:project2_flutter/job_listing.dart';
import 'package:project2_flutter/candidate_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreenPage(),
      routes: {
        '/home-page': (context) => HomeScreen(),
        '/create-post': (context) => const CreatePostScreen(),
        '/job-listing':(context) => const JobListingsPage(),
        '/candidate':(context) => const CandidateScreen(),

      },
    );
  }
}
