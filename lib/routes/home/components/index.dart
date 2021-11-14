import 'package:flutter/material.dart';
import 'package:mospix/routes/home/components/name_header/index.dart';
import 'package:mospix/routes/home/components/next_card/index.dart';
import 'package:mospix/routes/home/components/points_card/index.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'MOSPIX',
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
                    child: Text('SOS', style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Column(
              children: const [
                NameHeader(),
                PointsCard(),
                NextCard(),
              ],
            )));
  }
}
