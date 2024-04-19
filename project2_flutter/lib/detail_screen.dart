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
          backgroundColor: Colors.blue,
          title: Text("Candidate Screen",
            style: TextStyle(color: Colors.white),),

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
                    width: 360,
                    height: 300,)
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

              SizedBox(height: 12),
              Text("Comtact",
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
              Text(candidate.email,
                style: TextStyle(fontSize: 16),
              ),
              Text(candidate.phoneNumber,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 12),
              Text("Education",
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
              Text(candidate.highestEducation,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 12),
              ElevatedButton(
                  onPressed: () {

                  },
                  child: const Text("Connect"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0)),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}