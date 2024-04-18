
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2_flutter/screens/DrawerLayoutWidget.dart';
import 'candidate.dart';
import 'detail_screen.dart';

class CandidateScreen extends StatelessWidget {
  const CandidateScreen({Key ? key, required this.candidate}) : super(key: key);
  final Candidate candidate;

  @override
  Widget build(BuildContext context) {
    List<Candidate> candidateList = [
      Candidate(
        "Jaspreet Singh",
        "boy1.jpg",
        "Web Developer",
        "jaspreet@gmail.com",
        "+1 541-456-7890",
        "Experienced web developer with expertise in frontend and backend technologies.",
        "Bachelor of Technology in Computer Science",
        "Mr.",
      ),

      Candidate(
          "Rifa",
          "girl1.jpg",
          "App Developer",
          "rifa@gmail.com",
          "+1 481-654-3210",
          "Passionate app developer specializing in iOS and Android platforms.",
          "Bachelor of Science in Computer Engineering",
          "Ms."
      ),

      Candidate(
          "Azmi",
          "girl2.jpg",
          "Software Developer",
          "azmi@gmail.com",
          "+1 543-123-4567",
          "Skilled software developer with expertise in multiple programming languages.",
          "Bachelor of Science in Software Engineering",
          "Ms."
      ),

      Candidate(
          "Dilpreet Singh",
          "boy2.jpg",
          "Game Developer",
          "dilpreet@gmail.com",
          "+1 571-555-7890",
          "Creative game developer with a passion for storytelling and immersive experiences.",
          "Bachelor of Fine Arts in Game Design",
          "Mr."
      ),

      Candidate(
          "Har Simran Kaur",
          "girl3.jpg",
          "Cloud Developer",
          "harsimran@gmail.com",
          "+1 531-999-1234",
          "Experienced cloud developer specializing in AWS and Azure services.",
          "Master of Science in Information Technology",
          "Ms."
      ),

      Candidate(
          "Manpreet Kaur",
          "girl4.jpg",
          "Software Tester",
          "manpreet@gmail.com",
          "+1 527-333-4444",
          "Detail-oriented software tester with a focus on ensuring product quality.",
          "Bachelor of Computer Applications",
          "Ms."
      ),

      Candidate(
          "Sandeep Singh",
          "boy3.jpg",
          "Java Developer",
          "sandeep@gmail.com",
          "+1 519-222-3333",
          "Skilled Java developer with expertise in enterprise application development.",
          "Master of Computer Applications",
          "Mr."
      ),

      Candidate(
          "Aarav Patel",
          "boy4.jpg",
          "Mobile App Developer",
          "aarav@gmail.com",
          "+1 489-555-6666",
          "Innovative mobile app developer with a focus on user-friendly design.",
          "Bachelor of Engineering in Information Technology",
          "Mr."
      ),

      Candidate(
          "Neha Sharma",
          "girl5.jpg",
          "Software Engineer",
          "neha@gmail.com",
          "+1 546-888-9999",
          "Passionate software engineer with experience in full-stack development.",
          "Master of Science in Computer Science",
          "Ms."
      ),

      Candidate(
          "Aryan Gupta",
          "boy5.jpg",
          "Data Analyst",
          "aryan@gmail.com",
          "+1 439-888-7777",
          "Analytical data analyst skilled in data visualization and statistical analysis.",
          "Bachelor of Science in Statistics",
          "Mr."
      ),

      Candidate(
          "Ananya Singh",
          "girl6.jpg",
          "UI/UX Designer",
          "ananya@gmail.com",
          "+1 621-222-1111",
          "Creative UI/UX designer focused on delivering intuitive and visually appealing designs.",
          "Bachelor of Design in Interaction Design",
          "Ms."
      ),

      Candidate(
          "Virat Kumar",
          "boy6.jpg",
          "Frontend Developer",
          "virat@gmail.com",
          "+1 666-777-8888",
          "Frontend developer with expertise in HTML, CSS, and JavaScript frameworks.",
          "Bachelor of Technology in Computer Engineering",
          "Mr."
      ),

      Candidate(
          "Ishaan Khanna",
          "boy7.jpg",
          "Project Manager",
          "ishaan@gmail.com",
          "+1 555-444-3333",
          "Seasoned project manager experienced in leading cross-functional teams to successful project completion.",
          "Master of Business Administration",
          "Mr."
      ),

      Candidate(
          "Priya Verma",
          "girl7.jpg",
          "Quality Assurance Analyst",
          "priya@gmail.com",
          "+1 437-456-7890",
          "Dedicated QA analyst with a focus on ensuring software quality through comprehensive testing.",
          "Bachelor of Science in Computer Science",
          "Ms."
      ),
    ];


    return Scaffold(
      drawer: const DrawerLayoutWidget(),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Candidate Screen",
        style: TextStyle(color: Colors.white),),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: candidateList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(candidate: candidateList[index]),
                        ),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Hero(tag: candidateList[index].photo,
                                  child: Image(
                                    image: AssetImage(
                                        "Images/" + candidateList[index].photo),
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 30),

                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  candidateList[index].name,
                                  style: TextStyle(fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  candidateList[index].currentJob,
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
