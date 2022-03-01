import 'package:flutter/material.dart';

class CourseListItemDescription extends StatelessWidget {
  final String description;

  const CourseListItemDescription(this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      description,
      style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
    ));
  }
}
