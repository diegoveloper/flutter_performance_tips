import 'package:flutter/material.dart';

class Good extends StatefulWidget {
  const Good({super.key});

  @override
  State<Good> createState() => _GoodState();
}

class _GoodState extends State<Good> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tip 1 - Good')),
      body: Stack(
        children: [
          const Positioned.fill(child: _MyBackground()),
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
  const _MyBackground();

  @override
  Widget build(BuildContext context) {
    print('Print Good');
    return Image.network(
      'https://images7.alphacoders.com/310/310795.jpg',
      fit: BoxFit.cover,
    );
  }
}
