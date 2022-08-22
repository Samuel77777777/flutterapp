import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Exercisee extends StatelessWidget {
  final icons;
  final String exerciseeName;
  final int numberOfExercises;
  final color;
  final onPress;

  const Exercisee(
      {Key? key,
      required this.icons,
      required this.exerciseeName,
      required this.numberOfExercises,
      required this.color,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: onPress,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      child: Icon(
                        icons,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(16),
                      color: color,
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      //title
                      Text(
                        exerciseeName,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      //subtitle
                      Text(
                        numberOfExercises.toString() + 'Solen',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SimpleCircularProgressBar(
              animationDuration: 100,
              size: 50,
              onGetText: (double value) {
                return Text('${value.toInt()}%');
              },
            ),

            ////
          ],
        ),
      ),
    );
  }
}

// Example 16
// SimpleCircularProgressBar(
//     mergeMode: true,
//     onGetText: (double value) {
//         return Text('${value.toInt()}%');
//     },
// ),