import 'package:flutter/material.dart';

class Hometwo extends StatefulWidget {
  const Hometwo({super.key});

  @override
  State<Hometwo> createState() => _HometwoState();
}

class ContainerWithBoxDecoration extends StatelessWidget {
  const ContainerWithBoxDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(100.0),
            bottomRight: Radius.circular(10.0),
          ),
          gradient: LinearGradient(
              colors: [Colors.white, Colors.lightGreen.shade500],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey, blurRadius: 10.0, offset: Offset(0.0, 10.0))
          ]),
    );
  }
}

class _HometwoState extends State<Hometwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        title: const Text('Home'),
        flexibleSpace: const SafeArea(
          child: Icon(
            Icons.photo,
            color: Colors.white70,
            size: 75.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[ContainerWithBoxDecoration(), Divider()],
            ),
          ),
        ),
      ),
    );
  }
}

class TodoMenuItem {
  final String title;
  final Icon icon;

  TodoMenuItem({required this.title, required this.icon});
}

List<TodoMenuItem> foodMenuList = [
  TodoMenuItem(title: 'Fast Food', icon: const Icon(Icons.fastfood)),
  TodoMenuItem(title: 'Remind Me', icon: const Icon(Icons.add_alarm)),
  TodoMenuItem(title: 'Flight', icon: const Icon(Icons.flight)),
  TodoMenuItem(title: 'Music', icon: const Icon(Icons.audiotrack)),
];

class PopupMenuButtonWidget extends StatelessWidget implements PreferredSizeWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
          child: PopupMenuButton<TodoMenuItem>(
        icon: const Icon(Icons.view_list),
        onSelected: ((valueSelected) {
          print('valueSelected: ${valueSelected.title}');
        }),
        itemBuilder: (BuildContext context) {
          return foodMenuList.map((TodoMenuItem todoMenuItem) {
            return PopupMenuItem<TodoMenuItem>(
              value: todoMenuItem,
              child: Row(
                children: <Widget>[
                  Icon(todoMenuItem.icon.icon),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Text(todoMenuItem.title),
                ],
              ),
            );
          }).toList();
        },
      )),
    );
  }
@override
Size get preferredSize => const Size.fromHeight(75.0);
}


