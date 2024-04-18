import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project2_flutter/screens/DrawerLayoutWidget.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Create a post';
  final TextEditingController _postDescriptionController = TextEditingController();
  final TextEditingController _jobTitleController = TextEditingController();
  final TextEditingController _jobDescriptionController = TextEditingController();
  var items = [
    'Create a post',
    'Create a job'
  ];
  File? _image;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  void uploadImage() {
    // Implement your image upload logic here
    // For example, you could use HTTP requests to upload the image to a server
    // Make sure to handle any errors and provide feedback to the user
  }
  Widget _buildDynamicControls() {
    switch (dropdownValue) {
      case 'Create a post':
        return _buildPostFields();
      case 'Create a job':
        return _buildJobFields();
      default:
        return _buildPostFields();
    }
  }
  Widget _buildPostFields() {
    return Column(
      children: [
        Center(
          child: _image == null
              ? Text('No image selected.')
              : Image.network(_image!.path,
              height: 200),
        ),
        ElevatedButton(
          onPressed: getImage,
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
          child:const Icon(Icons.add_a_photo),
        ),
        const SizedBox(height: 20),
        TextFormField(
          maxLines: 10,
          controller: _postDescriptionController,
          decoration:const InputDecoration(
            hintText: 'Please enter post description',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your post title';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.pushNamed(context, '/home-page');
            }
          },
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
          child:const Text('Create post'),
        )
      ],
    );
  }
  Widget _buildJobFields() {
    return Column(
      children: [
        TextFormField(
          controller: _jobTitleController,
          decoration:const InputDecoration(
            hintText: 'Job Title',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter job title';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        TextFormField(
          maxLines: 10,
          controller: _jobDescriptionController,
          decoration:const InputDecoration(
            hintText: 'Please enter job description',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter job description';
            }

            return null;
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.pushNamed(context, '/job-listing');
            }
          },
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
          child:const Text('Post this job'),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post screen'),
      ),
      drawer: const DrawerLayoutWidget(),
      body: SingleChildScrollView(
        child: Container(
          padding:const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.fromLTRB(10.0,0,2.0,0),
                  child: DropdownButton<String>(
                    underline: const SizedBox(),
                    value: dropdownValue,
                    elevation: 6,
                    focusColor: Colors.transparent,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: _buildDynamicControls(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}