import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedStars = 4;

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
                          Icon(Icons.location_on, color: Colors.black54),
                          SizedBox(width: 5),
                          Text('USA, Califronia')
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
                      Wrap(
                          children: List.generate(
                              5,
                              (index) => Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.lightBlueAccent),
                                  )))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
