import 'package:flutter/material.dart';
import 'package:mospix/routes/schedules/components/card_item/index.dart';

class SchedulesView extends StatefulWidget {
  const SchedulesView({Key? key}) : super(key: key);

  @override
  _SchedulesViewState createState() => _SchedulesViewState();
}

class _SchedulesViewState extends State<SchedulesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.navigation),
          backgroundColor: Colors.green,
        ),
        appBar: AppBar(
          title: const Text(
            'Schedules',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'SOS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Your schedules for today',
                style:
                    TextStyle(color: Color(0xFF9B287B), fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            CardItem()
          ],
        ));
  }
}
