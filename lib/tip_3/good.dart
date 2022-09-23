import 'package:flutter/material.dart';

class Good extends StatefulWidget {
  const Good({super.key});

  @override
  State<Good> createState() => _GoodState();
}

class _GoodState extends State<Good> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tip 3 - Good')),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
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
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _MyItem(index),
              childCount: 10000,
            ),
          ),
        ],
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
