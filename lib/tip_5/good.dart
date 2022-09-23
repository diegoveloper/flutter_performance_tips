import 'package:flutter/material.dart';

const _pages = 4;

class Good extends StatefulWidget {
  const Good({super.key});

  @override
  State<Good> createState() => _GoodState();
}

class _GoodState extends State<Good> {
  int _index = 0;
  late final List<bool> _activated = List<bool>.filled(_pages, false);

  @override
  Widget build(BuildContext context) {
    // mark this index as activated
    _activated[_index] = true;
    // only build activated children
    final children = List.generate(
      _activated.length,
      (i) => Positioned.fill(
        child: _activated[i] ? _Page(index: i) : const SizedBox.shrink(),
      ),
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Tip 5 - Good')),
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _index,
              children: children,
            ),
          ),
          Row(
            children: List.generate(
              _pages,
              (index) => Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _index = index;
                    });
                  },
                  child: Container(
                    color: Colors.black,
                    padding: const EdgeInsets.all(20.0),
                    alignment: Alignment.center,
                    child: Text(
                      index.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Page extends StatefulWidget {
  const _Page({required this.index});

  final int index;

  @override
  State<_Page> createState() => _PageState();
}

class _PageState extends State<_Page> {
  bool _loading = true;

  void _loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[widget.index % Colors.primaries.length],
      child: Center(
        child: _loading
            ? const CircularProgressIndicator()
            : Text(
                'Page: ${widget.index}',
                style: const TextStyle(fontSize: 60),
              ),
      ),
    );
  }
}
