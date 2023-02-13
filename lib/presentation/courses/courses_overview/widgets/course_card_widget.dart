import 'package:flutter/material.dart';
import '../../../../domain/course/course.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  const CourseCard({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: course.color.getOrCrash(),
      // color: const Color(0xFFF63D33),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 15),
            height: 150,
            child: ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: Image.network(course.courseImage.getOrCrash(),
                  height: 36, width: 36),
              title: Text(course.name.getOrCrash(),
                  style: Theme.of(context).textTheme.headline5),
              trailing:
                  Text("RS14444", style: Theme.of(context).textTheme.headline5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 26),
            child: Container(
              width: MediaQuery.of(context).size.width * .75,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("12  Lesson",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  const Icon(Icons.circle, color: Colors.black, size: 8),
                  Text(course.courseTime.getOrCrash(),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
