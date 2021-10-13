import 'package:flutter/material.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
        height: MediaQuery.of(context).size.height * 0.35,
        child: const Center(child: Text("Map coming soon!")));
  }
}
