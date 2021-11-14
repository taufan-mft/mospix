import 'package:flutter/material.dart';

class PointsCard extends StatelessWidget {
  const PointsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          color: const Color(0xFF9B287B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'Your Points',
                      style:
                          TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.star,
                size: 42,
                color: Colors.white,
              ),
              const Text(
                '138XP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.5,
                    semanticsLabel: 'Linear progress indicator',
                    backgroundColor: Color(0xFFFAE5E3),
                    minHeight: 10,
                    color: Color(0xFF62AA72),
                  ),
                ),
              ),
              const Text('only 20 more to become Lord',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
              const SizedBox(height: 10,)
            ],
          ),
        ));
  }
}
