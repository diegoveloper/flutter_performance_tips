import 'package:flutter/material.dart';

class Bad extends StatefulWidget {
  const Bad({super.key});

  @override
  State<Bad> createState() => _BadState();
}

class _BadState extends State<Bad> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tip 1 - Bad')),
      body: Stack(
        children: [
          Positioned.fill(child: _MyBackground()),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              counter.toString(),
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class _MyBackground extends StatelessWidget {
  _MyBackground();

  @override
  Widget build(BuildContext context) {
    print('Print Bad');
    return Image.network(
      'https://images7.alphacoders.com/310/310795.jpg',
      fit: BoxFit.cover,
    );
  }
}
