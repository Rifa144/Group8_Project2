import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2_flutter/candidate.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key ? key, required this.candidate}): super(key: key);
  final Candidate candidate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(tag: candidate.photo,
                  child:
                  Image(
                    image: AssetImage("Images/" + candidate.photo),
                    width: 400,
                    height: 360,)
              ),
              Text("${candidate.title} ${candidate.name}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.blue),
              ),

              Text(candidate.currentJob,
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 16),
              Text(candidate.description,
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 16),
              Text("Comtact",
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
              Text(candidate.email,
                style: TextStyle(fontSize: 16),
              ),
              Text(candidate.phoneNumber,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 16),
              Text("Education",
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
              Text(candidate.highestEducation,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {

                  },
                  child: const Text("Connect"),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20, color: Colors.white, backgroundColor: Colors.blue),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}