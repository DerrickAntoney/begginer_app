import 'package:flutter/material.dart';
import 'package:tutss_app/pages/hometwo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(100.0),
            bottomRight: Radius.circular(10.0)),
        gradient: LinearGradient(
            colors: [Colors.white, Colors.lightGreen.shade500],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey, blurRadius: 10.0, offset: Offset(0.0, 10.0)),
        ],
      ),
      child: Center(
        child: RichText(
          text: const TextSpan(
            text: 'Flutter World',
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.deepPurple,
                decoration: TextDecoration.underline,
                decorationColor: Colors.deepPurpleAccent,
                decorationStyle: TextDecorationStyle.dotted,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal),
            children: <TextSpan>[
              TextSpan(
                text: ' for',
              ),
              TextSpan(
                text: ' Mobile',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text('Column 1'),
        Divider(),
        Text('Column 2'),
        Divider(),
        Text('Column 3')
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text('Row 1'),
        Padding(padding: EdgeInsets.all(16.0)),
        Text('Row 2'),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Text('Row 3')
      ],
    );
  }
}

class ColumnAndRowNestingWidget extends StatelessWidget {
  const ColumnAndRowNestingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          'Column and Row Nesting 1',
        ),
        Text(
          'Column and Row Nesting 2',
        ),
        Text(
          'Column and Row Nesting 3',
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Row Nesting 1'),
            Text('Row Nesting 2'),
            Text('Row Nesting 3')
          ],
        )
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(16.0)),
            TextButton(
              onPressed: () {},
              child: const Icon(Icons.flag),
            )
          ],
        ),
        const Divider(),
        Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(16.0)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.flight),
            ),
            const Padding(padding: EdgeInsets.all(16.0)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.flight),
              iconSize: 42.0,
              color: Colors.lightGreen,
              tooltip: 'Flight',
            )
          ],
        ),
        const Divider(),
        Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(16.0)),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.save),
            ),
            const Padding(padding: EdgeInsets.all(16.0)),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.save,
                color: Colors.lightGreen,
              ),
            )
          ],
        )
      ],
    );
  }
}

class ButtonBarWidget extends StatelessWidget {
  const ButtonBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.lightGreen.shade100,
        icon: const Icon(Icons.play_arrow),
        label: const Text('Play'),
      ),
      bottomNavigationBar: BottomAppBar(
        //hasNotch: true,
        color: Colors.lightGreen.shade100,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.pause),
            Icon(Icons.stop),
            Icon(Icons.access_time),
            Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        flexibleSpace: const SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.white70,
          ),
        ),
        bottom: const PopupMenuButtonWidget(),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ContainerWithBoxDecorationWidget(),
                Divider(),
                ColumnWidget(),
                Divider(),
                RowWidget(),
                Divider(),
                ColumnAndRowNestingWidget(),
                Divider(),
                ButtonWidget(),
                Divider(),
                ButtonBarWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
