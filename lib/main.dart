import 'package:flutter/material.dart';

void main() {
  runApp(DigitalPetApp());
}

class DigitalPetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Digital Pet App'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Status'),
                Tab(text: 'Actions'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
            ],
          ),
        ),
      ),
    );
  }
}