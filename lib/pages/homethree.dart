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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        ),
        Image(
            image: const AssetImage('assets/images/savingbowl.png'),
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width / 3),
        const Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        )
      ],
    );
  }
}

class BoxDecorationWidget extends StatelessWidget {
  const BoxDecorationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.orange,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0))
            ]),
      ),
    );
  }
}

class InputDecoratorsWidget extends StatelessWidget {
  const InputDecoratorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row();
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
                ImageAndIconWidget(),
                Divider(),
                BoxDecorationWidget(),
                Divider(),
                InputDecoratorsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
