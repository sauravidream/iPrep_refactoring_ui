import 'package:flutter/material.dart';
import '../../../../domain/course/course.dart';

class ErrorCourseCard extends StatelessWidget {
  const ErrorCourseCard({Key? key, required this.course}) : super(key: key);
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: <Widget>[
            Text(
              "Invalid note, please contact support",
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  ?.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text("Details for nerds",
                style: Theme.of(context).primaryTextTheme.bodyText2),
            Text(
              course.failureOption.fold(() => "", (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
