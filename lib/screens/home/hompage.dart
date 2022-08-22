import 'package:done/screens/home/emoji_face.dart';
import 'package:done/screens/home/excersice.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     label: 'home',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     label: 'home',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     label: 'home',
      //   ),
      // ]),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
            //greeting bar

            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Hi samuel
                            Text(
                              'Hi samuel',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),

                            Text(
                              '23 jan, 2021 ',
                              style: TextStyle(color: Colors.blue[200]),
                            ),
                          ],
                        ),

                        //notification
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(2),
                          child: IconButton(
                            onPressed: () {
                              print('haha');
                            },
                            icon: Icon(Icons.notifications),
                            color: Colors.white,
                          ),
                        )
                      ],

                      //search
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('search')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // how do you feel

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    // four different faces
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     //bad
                    //     Column(
                    //       children: [
                    //         EmotionFace(
                    //           emotionFace: '🥲',
                    //         ),
                    //         Text(
                    //           'Bad',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     Column(
                    //       children: [
                    //         EmotionFace(
                    //           emotionFace: '😂',
                    //         ),
                    //         Text(
                    //           'happy',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ],
                    //     ),

                    //     Column(
                    //       children: [
                    //         EmotionFace(
                    //           emotionFace: '😁',
                    //         ),
                    //         Text(
                    //           'smile',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     Column(
                    //       children: [
                    //         EmotionFace(
                    //           emotionFace: '🤪',
                    //         ),
                    //         Text(
                    //           'good',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ],
                    //     )

                    //     //fine

                    //     //well

                    //     //excellent
                    //   ],
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.all(25),
                    color: Colors.grey[300],
                    child: Center(
                      child: Column(
                        //exercise heading
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Activities',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          //listview of exercise
                          Expanded(
                            child: ListView(
                              children: [
                                Exercisee(
                                  onPress: () {
                                    print('haha');
                                  },
                                  color: Colors.red,
                                  icons: Icons.app_registration_outlined,
                                  exerciseeName: '  Register your panel',
                                  numberOfExercises: 1,
                                ),
                                Exercisee(
                                  onPress: () {
                                    print('haha');
                                  },
                                  color: Colors.blue,
                                  icons: Icons.energy_savings_leaf,
                                  exerciseeName: 'Energy generated',
                                  numberOfExercises: 1,
                                ),
                                Exercisee(
                                  onPress: () {
                                    print('haha');
                                  },
                                  color: Colors.green,
                                  icons: Icons.solar_power,
                                  exerciseeName: 'Energy Consumed',
                                  numberOfExercises: 1,
                                ),
                                Exercisee(
                                  onPress: () {
                                    print('haha');
                                  },
                                  color: Colors.orange,
                                  icons: Icons.star,
                                  exerciseeName: 'Energy Remaining',
                                  numberOfExercises: 1,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
