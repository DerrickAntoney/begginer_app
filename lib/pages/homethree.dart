import 'package:flutter/material.dart';
import 'about.dart';

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
    return Column(
      children: <Widget>[
        TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.grey.shade800, fontSize: 16.0),
          decoration: const InputDecoration(
              hintText: 'Notes',
              hintStyle: TextStyle(color: Colors.purple),
              //helperText: 'Notes',
              //helperStyle: TextStyle(color: Colors.purple)
              //border: OutlineInputBorder()
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
              )),
        ),
        const Divider(
          color: Colors.lightGreen,
          height: 50.0,
        ),
        TextFormField(
          decoration: const InputDecoration(hintText: 'Enter your notes'),
        )
      ],
    );
  }
}

class _HomeThreeState extends State<HomeThree> {
  static String _howAreYou = '...';
  void _openPageAbout ({required BuildContext context, bool fullscreenDialog = false}) {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const About(),),);

  void _openPageGratitude(
    {BuildContext context, bool fullscreenDialog = false}) async {
    final String _gratitudeResponse = await Navigator.push(, route)
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => _openPageGratitude(context: context),
          tooltip: 'About',
          child: const Icon(Icons.sentiment_satisfied)),
      appBar: AppBar(
        title: const Text(
          'Images',
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () =>
                _openPageAbout(context: context, fullscreenDialog: true),
            icon: const Icon(Icons.info_outline),
          )
        ],
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
                Divider(),
                Text(
                  'Grateful for: $_howAreYou',
                  style: TextStyle(fontSize: 32.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
