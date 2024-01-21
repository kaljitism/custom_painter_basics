import 'package:custom_painter_basics/canvas_1.dart';
import 'package:custom_painter_basics/canvas_2.dart';
import 'package:flutter/material.dart';

class MyRouter extends StatefulWidget {
  const MyRouter({super.key});

  @override
  State<MyRouter> createState() => _MyRouterState();
}

class _MyRouterState extends State<MyRouter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Custom Painter Basics'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CanvasOne();
                  },
                ),
              );
            },
            title: const Text('Canvas 1'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CanvasTwo();
                  },
                ),
              );
            },
            title: const Text('Canvas 2'),
          ),
        ],
      ),
    );
  }
}
