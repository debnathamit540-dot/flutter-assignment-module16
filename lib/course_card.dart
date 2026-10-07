import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String duration;
  final String level1;
  final String image;




  const CourseCard({super.key, required this.title, required this.duration, required this.level1, required this.image, });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: double.infinity,
              height: 110,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 10),

            Text(title),

            SizedBox(height: 5),

            Text(duration),

            SizedBox(height: 5),

            Text(level1),

            Spacer(),

            ElevatedButton(
              onPressed: () {},
              child: Text('Course Details'),
            ),
          ],
        ),
      ),
    );
  }
}