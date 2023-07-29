import 'package:flutter/material.dart';

class HomeThree extends StatefulWidget {
  const HomeThree({super.key});

  @override
  State<HomeThree> createState() => _HomeThreeState();
}

class ImageAndIconWidget extends StatelessWidget {
  const ImageAndIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[],
    );
  }
}

class _HomeThreeState extends State<HomeThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Images',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                ImageAndIconWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
