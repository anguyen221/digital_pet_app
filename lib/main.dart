import 'package:flutter/material.dart';

void main() {
  runApp(DigitalPetApp());
}

class DigitalPetApp extends StatefulWidget {
  @override
  DigitalPetAppState createState() => DigitalPetAppState();
}

class DigitalPetAppState extends State<DigitalPetApp> {
  int hunger = 3;
  int happiness = 7;

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
              PetStatusTab(hunger: hunger, happiness: happiness),
            ],
          ),
        ),
      ),
    );
  }
}

class PetStatusTab extends StatelessWidget {
  final int hunger;
  final int happiness;

  PetStatusTab({required this.hunger, required this.happiness});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hunger: $hunger', style: TextStyle(fontSize: 20)),
          Text('Happiness: $happiness', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}

