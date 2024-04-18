import 'package:flutter/material.dart';

class Job {
  final String title;
  final String company;
  final String location;
  final String logo;
  final String description;
  final String requirements;

  Job({
    required this.title,
    required this.company,
    required this.location,
    required this.logo,
    required this.description,
    required this.requirements,
  });
}

List<Job> jobList = [
  Job(
    title: 'Software Engineer',
    company: 'Google',
    location: 'Waterloo, ON',
    logo: 'Images/google.png',
    description: 'Join the engineering team at Google and help shape the future of software development! We are seeking talented software engineers experienced in developing innovative solutions for web and mobile platforms. As a software engineer at Google, you will have the opportunity to work on a wide range of projects, from designing scalable systems to optimizing user experiences.',
    requirements: 'Requirements:\n- Bachelor\'s degree in Computer Science or related field\n- Experience with software development in one or more programming languages\n- Strong problem-solving skills and analytical thinking\n- Ability to work in a collaborative team environment\n- Excellent communication and interpersonal skills',
  ),
  Job(
    title: 'Lead Software Developer',
    company: 'Microsoft',
    location: 'Calgary, AB',
    logo: 'Images/microsoft.png',
    description: 'Microsoft is seeking experienced senior software engineers to join our growing team! In this role, you will lead the design and development of innovative software solutions that drive business growth and customer satisfaction. As a senior software engineer, you will collaborate with cross-functional teams to deliver high-quality products and mentor junior developers.',
    requirements: 'Requirements:\n- Bachelor\'s degree in Computer Science or equivalent\n- 5+ years of experience in software development\n- Proficiency in one or more programming languages\n- Strong understanding of software development best practices\n- Excellent problem-solving and decision-making abilities\n- Leadership and mentoring skills',
  ),
  Job(
    title: 'Mobile Application Developer',
    company: 'Tesla',
    location: 'Toronto, ON',
    logo: 'Images/tesla.png',
    description: 'Tesla is revolutionizing the automotive industry, and we are looking for talented mobile app developers to join our team! As a mobile app developer at Tesla, you will create innovative solutions that enhance the Tesla ownership experience. From designing intuitive user interfaces to optimizing app performance, you will play a key role in shaping the future of mobility.',
    requirements: 'Requirements:\n- Bachelor\'s degree in Computer Science, Engineering, or related field\n- Experience with mobile app development for iOS and Android\n- Strong problem-solving skills and attention to detail\n- Ability to work in a fast-paced environment and adapt to change\n- Passion for clean code and continuous learning',
  ),
  Job(
    title: 'App Development Engineer',
    company: 'Adobe',
    location: 'Kitchener, ON',
    logo: 'Images/adobe.png',
    description: 'Join the Adobe Experience Cloud team and help us build the next generation of mobile applications! As a mobile application developer at Adobe, you will collaborate with cross-functional teams to deliver engaging mobile experiences for our customers. You will have the opportunity to work on a wide range of projects, from prototyping new features to optimizing app performance.',
    requirements: 'Requirements:\n- Bachelor\'s degree in Computer Science or equivalent\n- Experience with mobile app development for iOS and Android\n- Strong understanding of object-oriented programming\n- Excellent communication and collaboration skills\n- Ability to thrive in a dynamic, fast-paced environment',
  ),
  Job(
    title: 'Frontend Mobile Developer',
    company: 'Cisco',
    location: 'Austin, TX',
    logo: 'Images/cisco.png',
    description: 'Cisco is transforming the way people connect and communicate, and we are looking for talented mobile app developers to join our team! As a mobile app developer at Cisco, you will work on innovative projects that leverage cutting-edge technologies to create intuitive and feature-rich mobile applications.',
    requirements: 'Requirements:\n- Bachelor\'s degree in Computer Science, Engineering, or related field\n- Experience with mobile app development for iOS and Android\n- Strong problem-solving and analytical skills\n- Ability to work independently and collaborate with cross-functional teams\n- Passion for learning new technologies and adapting to change',
  ),
  Job(
    title: 'Software Development Engineer',
    company: 'Amazon',
    location: 'Seattle, WA',
    logo: './Images/social.png',
    description: 'Amazon is seeking talented software development engineers to join our growing team! In this role, you will have the opportunity to work on exciting projects that impact millions of customers worldwide. From developing new features to optimizing system performance, you will play a key role in delivering high-quality software solutions.',
    requirements: 'Requirements:\n- Bachelor\'s degree in Computer Science, Engineering, or related field\n- 2+ years of experience in software development\n- Proficiency in one or more programming languages\n- Strong understanding of software development best practices\n- Excellent communication and collaboration skills',
  )
];
