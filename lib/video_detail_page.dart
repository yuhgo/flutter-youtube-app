// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget {
  const VideoDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text('動画'),
        ),
      ),
    );
  }
}
