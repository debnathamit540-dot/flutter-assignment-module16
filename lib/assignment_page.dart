
import 'package:flutter/material.dart';

import 'course_card.dart';
class AssignmentPage extends StatelessWidget {
   AssignmentPage({super.key});

  final courses = [
    {
      'title': 'Full Stack web development with Mern',
      'duration': '6 months',
      'level1': 'beginer',
      'image': 'assets/mern.png'
    },

    {
      'title': 'Full Stack web development with Python, Django & React',
      'duration': '6 months',
      'level1': 'beginer',
      'image': 'assets/python_react.png'
    },
    {
      'title': 'Full Stack web development with Asp.Net core',
      'duration': '6 months',
      'level1': 'beginer',
      'image': 'assets/aspnet.png'
    },
    {
      'title': 'SQA: Manual & Automated Testing',
      'duration': '6 months',
      'level1': 'beginer',
      'image': 'assets/sqa.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            GridView.builder(
                shrinkWrap:true,
                physics: NeverScrollableScrollPhysics(),
        
        
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                   crossAxisSpacing: 5,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.60
                ),
                itemCount: courses.length,
                itemBuilder: (context, index) {
               return  CourseCard(
                 title: courses[index]['title']!,
                 duration: courses[index]['duration']!,
                 level1: courses[index]['level1']!,
                 image: courses[index]['image']!,
               );
            })
            
          ],
        ),
      ),
    );
  }
}
