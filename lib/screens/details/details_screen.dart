import 'package:cooking_app/screens/details/widgets/app_buttons.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedStars = 4;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/med.jpg"),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                left: 10,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                        color: Colors.white),
                  ],
                )),
            Positioned(
                top: 250,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Asian',
                            style: TextStyle(
                                color: Colors.black54.withOpacity(0.8)),
                          ),
                          Text('\$ 250',
                              style: TextStyle(color: Colors.black54))
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.people, color: Colors.black54),
                          SizedBox(width: 5),
                          Text('50,000 enrolled')
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(Icons.star,
                                  color: index < selectedStars
                                      ? Colors.black45
                                      : Colors.black26)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('(4.0)')
                      ]),
                      SizedBox(
                        height: 25,
                      ),
                      Text('People'),
                      SizedBox(height: 5),
                      Text("Number of people in your group"),
                      SizedBox(height: 10),
                      Wrap(
                          children: List.generate(
                              5,
                              (index) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: AppButtons(
                                      size: 50,
                                      color: selectedIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                      backgroundColor: selectedIndex == index
                                          ? Colors.black
                                          : Colors.grey.shade300,
                                      borderColor: selectedIndex == index
                                          ? Colors.black
                                          : Colors.grey.shade300,
                                      isIcon: false,
                                      text: (index + 1).toString(),
                                    ),
                                  )))),
                      SizedBox(height: 10),
                      Text('Description'),
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur fringilla nisl non leo iaculis, non posuere augue feugiat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam pharetra mi vel nulla sagittis, sit amet interdum justo lacinia. Vestibulum non rhoncus libero. Praesent non urna vitae felis suscipit imperdiet. Ut iaculis laoreet sem eu molestie. Quisque pharetra interdum lectus, ut aliquet diam iaculis vitae. Sed quis blandit nulla')
                    ],
                  ),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButtons(
                        color: (Colors.black),
                        backgroundColor: Colors.grey.shade300,
                        size: 60,
                        borderColor: Colors.black,
                        isIcon: true,
                        icon: Icons.bookmark),
                    SizedBox(width: 25),
                    Expanded(
                        child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey.shade300,
                                minimumSize: const Size(double.maxFinite, 60),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Enroll',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ))),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
