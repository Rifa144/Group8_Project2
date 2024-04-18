import 'package:flutter/material.dart';
import 'package:project2_flutter/models/Post.dart';
import 'package:project2_flutter/screens/CreatePostScreen.dart';
import 'package:project2_flutter/screens/DrawerLayoutWidget.dart';

class HomeScreen extends StatelessWidget {
  final List<Post> postList = [
    Post(
        id:5,
        userName: 'Marmik Rajendrakumar Soni',
        connectionType: 1.0,
        description:
        'Excited to announce the completion of the Google Data Analytics Certification Course, covering topics such as data cleaning, visualization, interpretation, and drawing actionable insights. ',
        image: 'pictures/post5.jpg',
        dateTime: '4/10/2024'
    ),
    Post(
        id:1,
        userName: 'Azmi Eb Thissam',
        connectionType: 1.0,
        description:
        'Once upon a time in the bustling world of technology, there was a kingdom where businesses sought to improve their operations and innovate in the face of ever-changing demands. In this kingdom, there existed a powerful concept known as Service-Oriented Architecture (SOA) and its evolution into a broader landscape of services.',
        image: 'pictures/post1.png',
        dateTime: '4/9/2024'
    ),
    Post(
        id:2,
        userName: 'Jaspreet Singh',
        connectionType: 1.0,
        description:
        'Are you an IT professional and want to secure your spot as one of the best and highest paid in the market in 2024? On this Tuesday, at 7 PM Eastern time, the free Intensive Cloud Training will start! Well guide you through a comprehensive plan to master AWS, one of the top cloud providers of the world. 100% hands-on.',
        image: 'pictures/post2.jpg',
        dateTime: '4/8/2024'
    ),
    Post(
        id:3,
        userName: 'Rifa Riyas Prasla',
        connectionType: 2.0,
        description:
        'Get the latest tips on building resilient data pipelines for real-time streaming data. Learn from real-world case studies.',
        image: 'pictures/post3.jpg',
        dateTime: '4/7/2024'
    ),
    Post(
        id:4,
        userName: 'Izyan Bin Sadath',
        connectionType: 1.0,
        description:
        'Grateful to embark on this exciting journey with iFour Technolab Pvt. Ltd. ! A heartfelt thank you for the warm welcome and the thoughtful gift. Looking forward to contributing to the teams success and achieving great milestones',
        image: 'pictures/post4.jpg',
        dateTime: '4/9/2024'
    ),
    Post(
        id:6,
        userName: 'Helen Lizzy George',
        connectionType: 1.0,
        description:
        'Excited to share a new article unveiling the foundations of Layered and Component-Based Architecture in software engineering!',
        image: 'pictures/post6.png',
        dateTime: '4/9/2024'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      drawer: const DrawerLayoutWidget(),

      body:  Container(
        margin:const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, index) {
          final post = postList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    // set navigation if user click on the card currenty its create screen
                      builder: (context) => const CreatePostScreen()
                  )
              );
            },
            child: Card(
              elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              margin: const EdgeInsets.only(bottom: 50.0 ),
          child: Padding(
          padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [Text(post.userName,
                                style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              Container(
                                margin: const EdgeInsets.all(10.0), // Add margin
                                child: Text(post.connectionType.toStringAsFixed(1)),
                              ),
                            ],
                            ),
                            Text(post.dateTime)
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Image.network(
                            post.image!,
                            width: double.infinity,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          post.description,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(height: 8.0),
                        Container(
                          margin: const EdgeInsets.all(8.0), // Add margin
                          child: const Text(
                            'Click to know more to see the link of candidates',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/all-candidates');
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
                          child:const Text('Know More'),
                        ),
                      ],
                    ),
                  )

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