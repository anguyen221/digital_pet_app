import 'package:flutter/material.dart';

void main() {
  runApp(DigitalPetApp());
}

class DigitalPetApp extends StatefulWidget {
  const DigitalPetApp({super.key});

  @override
  DigitalPetAppState createState() => DigitalPetAppState();
}

class DigitalPetAppState extends State<DigitalPetApp> {
  int hunger = 3;
  int happiness = 7;

   void feedPet() {
    setState(() {
      hunger = hunger > 0 ? hunger - 1 : 0;
    });
  }

  void playWithPet() {
    setState(() {
      happiness = happiness < 10 ? happiness + 1 : 10;
    });
  }

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
              PetActionsTab(feedPet: feedPet, playWithPet: playWithPet),
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

  const PetStatusTab({super.key, required this.hunger, required this.happiness});

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

class PetActionsTab extends StatelessWidget {
  final VoidCallback feedPet;
  final VoidCallback playWithPet;

  const PetActionsTab({super.key, required this.feedPet, required this.playWithPet});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: feedPet,
            child: Text('Feed Pet'),
          ),
          ElevatedButton(
            onPressed: playWithPet,
            child: Text('Play with Pet'),
          ),
        ],
      ),
    );
  }
}