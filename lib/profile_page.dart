import 'package:flutter/material.dart';
import 'package:tugas/perkuliahan.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jadwal Kuliah"),
        ),
        body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset('../assets/aqsaa.png'),
            Text(
              'M.Ramadhan Al-Aqsa (2009116022)',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0,top: 20.0),
              decoration: const BoxDecoration(color: Colors.red),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Perkuliahan()));
                },
                child: Text('Jadwal'),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
