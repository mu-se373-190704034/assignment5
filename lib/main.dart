import 'package:assignment5/about.dart';
import 'package:assignment5/exit.dart';
import 'package:assignment5/settingsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'ImageViewApp';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.purple),
    home: MainPage(),
  );
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(MyApp.title),
      centerTitle: true,
      actions: [
        Theme(
          data: Theme.of(context).copyWith(
              dividerColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.white),
              textTheme: TextTheme().apply(bodyColor: Colors.white),
              backgroundColor: Color.fromARGB(221, 188, 80, 202)),
          child: PopupMenuButton<int>(
            color: Color.fromARGB(226, 163, 58, 163),
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text('ABOUT'),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text('SETTINGS'),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 2,
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    const SizedBox(width: 8),
                    Text('EXIT'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  Widget _myListView(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Color.fromARGB(255, 188, 80, 202),
          child: const Center(child: Text('Efsa')),
        ),
        Container(
          height: 50,
          color: Color.fromARGB(221, 188, 80, 202),
          child: const Center(child: Text('Melisa')),
        ),
        Container(
          height: 50,
          color: Color.fromARGB(167, 188, 80, 202),
          child: const Center(child: Text('Ayşe')),
        ),
        Container(
          height: 50,
          color: Color.fromARGB(122, 188, 80, 202),
          child: const Center(child: Text('Sena')),
        ),
        Container(
          height: 50,
          color: Color.fromARGB(83, 188, 80, 202),
          child: const Center(child: Text('Irem')),
        ),
      ],
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AboutPage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SettingsPage()),
        );
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Exitpage()),
              (route) => false,
        );
    }
  }
}
