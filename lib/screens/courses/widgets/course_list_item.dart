import 'package:cooking_app/models/course.dart';
import 'package:cooking_app/screens/courses/widgets/course_list_item_description.dart';
import 'package:flutter/material.dart';

class CourseListItem extends StatelessWidget {
  final Course course;

  const CourseListItem(this.course);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(20)), child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  Colors.black,
                  Colors.transparent
                ]).createShader(bounds);
          },
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/${course.image}"),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
          ))),
      Align(
          alignment: const Alignment(-0.8, 0.5),
          child: CourseListItemDescription(course.name)),
    ]);
  }
}
