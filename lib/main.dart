// ignore_for_file: sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF609c46),
        title: const Text('Personality Test'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          const Text(
            'All Personality Result',
            style: TextStyle(
                color: Color(0xFFf5ca77),
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          Row(
            children: const [
              SizedBox(
                width: 50,
              ),
              Text(
                'Sam Harris',
                style: TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Text('Friendliness', style: TextStyle(color: Color(0xFF609c46))),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Gregariousness', style: TextStyle(color: Color(0xFF609c46))),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Ambitiousness', style: TextStyle(color: Color(0xFF609c46))),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Integrity', style: TextStyle(color: Color(0xFF609c46))),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Extraversion', style: TextStyle(color: Color(0xFF609c46))),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Openess', style: TextStyle(color: Color(0xFF609c46))),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Conscientiousness', style: TextStyle(color: Color(0xFF609c46))),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Stage 8', style: TextStyle(color: Color(0xFF609c46))),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Stage 9', style: TextStyle(color: Color(0xFF609c46))),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Stage 10', style: TextStyle(color: Color(0xFF609c46))),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Stage 11', style: TextStyle(color: Color(0xFF609c46))),
                          ],
                        ),
                        Stack(children: [
                          Container(
                            height: 350,
                            width: 150,
                            color: Colors.lightBlue.withAlpha(20),
                          ),
                          Positioned(
                            top: 25,
                            left: 10,
                            child: Column(
                              children: [
                                Container(
                                  //height: 50,
                                  width: 130,
                                  child: const LinearProgressIndicator(
                                    value: 0.75,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.green),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  //height: 50,
                                  width: 130,
                                  child: const LinearProgressIndicator(
                                    value: 0.6,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.green),
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  //height: 50,
                                  width: 130,
                                  child: const LinearProgressIndicator(
                                    value: 0.2,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.green),
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  //height: 50,
                                  width: 130,
                                  child: const LinearProgressIndicator(
                                    value: 0.5,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.green),
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                              ],
                            ),
                          ),
                        ])
                      ],
                    )
                  ],
                )),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_rtl),
            label: 'Personality',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'Tracking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_up_outlined),
            label: 'Change',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: const Color(0xFF609c46),
        unselectedItemColor: const Color(0xFF609c46),
        unselectedLabelStyle: TextStyle(color: Color(0xFF609c46)),
        showUnselectedLabels: true,
      ),
    );
  }
}
