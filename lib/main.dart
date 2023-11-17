import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: ReviewList(),
    ));

class ReviewList extends StatefulWidget {
  const ReviewList({super.key});

  @override
  State<ReviewList> createState() => _ReviewListState();
}

class _ReviewListState extends State<ReviewList> {
  List<Color> iconColor = List.filled(15, Colors.green);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: 15,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0,5,1,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'In the quietude of the morning, the sun gently paints the sky with hues of pink and gold. Birds chirp softly, announcing the arrival of a new day.'),
                SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Name'),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            iconColor[index] =
                                ((iconColor[index] == Colors.green)
                                    ? Colors.grey
                                    : Colors.green);
                          });
                        },
                        icon: Icon(
                          Icons.thumb_up_sharp,
                          size: 20.0, // Adjust the size as needed
                          color: iconColor[index], // Adjust the color as needed
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
