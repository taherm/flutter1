import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
      ),
      body: Column(
        children: [
          Image.asset('images/es.jpeg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amber,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: const Center(
              child: Text(
                'This is a text widget',
                style: TextStyle(color: Colors.cyan),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('button pressed elevated button');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('button pressed Outlined button');
            },
            child: const Text('Outlined Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('button pressed Text button');
            },
            child: const Text('Text Button'),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.local_fire_department,
                color: Colors.blue,
              ),
              Text('hello row'),
              Icon(Icons.local_fire_department),
            ],
          ),
        ],
      ),
    );
  }
}
