import 'package:cooking_app/models/course.dart';
import 'package:cooking_app/screens/courses/widgets/course_list_item.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  static final List<Course> entries = [
    Course(name: 'Basics with Babish', image: 'bingingwithbabish.jpg'),
    Course(name: 'Italian', image: 'italian.png'),
    Course(name: 'Asian', image: 'asian.jpg'),
    Course(name: 'Bread Mastery', image: 'bread.jpg'),
    Course(name: 'Sushi', image: 'sushi.jpg'),
    Course(name: 'Indian Cuisine', image: 'indian.jpg'),
    Course(name: 'Greek Cuisine', image: 'greek.jpg'),
    Course(name: 'Spanish Cuisine', image: 'spanish.jpg'),
    Course(name: 'Mediterranean Cuisine', image: 'med.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
        itemCount: entries.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return CourseListItem(entries[index]);
        },
      )
    ;
  }
}
