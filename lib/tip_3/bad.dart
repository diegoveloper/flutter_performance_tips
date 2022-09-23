import 'package:flutter/material.dart';

class Bad extends StatefulWidget {
  const Bad({super.key});

  @override
  State<Bad> createState() => _BadState();
}

class _BadState extends State<Bad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tip 3 - Bad')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 30,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(10),
                  width: 150,
                  color: Colors.primaries[index % Colors.primaries.length],
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 1000,
              shrinkWrap: true,
              itemBuilder: (context, index) => _MyItem(index),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyItem extends StatelessWidget {
  const _MyItem(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    print('ITEM: $index');
    return Container(
      margin: const EdgeInsets.all(10),
      height: 150,
      color: Colors.primaries[index % Colors.primaries.length],
      child: FittedBox(child: Text(index.toString())),
    );
  }
}
