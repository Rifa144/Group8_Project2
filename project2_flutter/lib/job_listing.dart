import 'package:flutter/material.dart';
import 'job_details.dart';
import 'Models/job.dart';
import 'package:project2_flutter/screens/DrawerLayoutWidget.dart';

class JobListingsPage extends StatelessWidget {
  const JobListingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerLayoutWidget(), //Defined drawer for navigation
      appBar: AppBar(title: const Text('Top Jobs Picked For you')),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: ListView.builder(  //Displaying the list of jobs created in job.dart
          itemCount: jobList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetailsPage(job: jobList[index])),
                );
              },
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                child: ListTile(
                  leading: Image.asset(jobList[index].logo),
                  title: Text(
                    jobList[index].title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobList[index].company,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        jobList[index].location,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
