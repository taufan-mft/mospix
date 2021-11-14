import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color(0xFFFAE5E3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Lansoprazole - 1 pill',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF170F11)),
                    ),
                    SizedBox(
                      height: 2,
                      child: Container(
                        margin: const EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                        width: double.infinity,
                        height: 0.2,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Lansoprazole - 1 pill',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF170F11)),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '08.00 AM',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF170F11)),
                ),
              ),
            )
          ]),
        ));
  }
}
