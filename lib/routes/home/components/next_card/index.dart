import 'package:flutter/material.dart';

class NextCard extends StatelessWidget {
  const NextCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          color: const Color(0xFF9B287B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: [
              Expanded(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          '10.20 am',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      'Drink your next medicine in 45 mins',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    child: Text(
                      '1 Lansoprazole tablet with water.',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 5,)
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/img/bear.png', height: 80,),
              )
            ],
          ),
        ));
  }
}
