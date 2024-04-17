import 'package:flutter/material.dart';
import 'package:project2_flutter/candidate.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final Candidate candidate = Candidate(
  "Jaspreet Singh",
  "boy1.jpg",
  "Web Developer",
  "jaspreet@gmail.com",
  "+1 123-456-7890",
  "Experienced web developer with expertise in frontend and backend technologies.",
  "Bachelor of Technology in Computer Science",
  "Mr"
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ElevatedButton(
        child: const Text("Candidate"),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CandidateScreen(candidate: candidate)),
          );
        },
      ),
    );
  }
}
