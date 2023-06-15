import 'package:flutter/material.dart';
import 'package:firstflutter/app/pages/bob_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _cnt = 0;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hi'),
            Text('$_cnt'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BobListPage())
                  );
                },
                child: Text('Hi Button')
            )
          ],
        ),
      ),

    );
  }
}