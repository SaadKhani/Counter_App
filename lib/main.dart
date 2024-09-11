import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Counter App'),
          backgroundColor: Colors.blue,
        ),
        body: const Count(),
      ),
    );
  }
}

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            a.toString(),
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                tooltip: 'Add',
                onPressed: () {
                  setState(() {
                    a++;
                  });
                },
                child: Text('Add'),
              ),
              FloatingActionButton(
                  child: const Text('Reset'),
                  onPressed: () {
                    setState(() {
                      a = 0;
                    });
                  }),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    a--;
                  });
                },
                tooltip: 'Sub',
                child: Text('Sub'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
