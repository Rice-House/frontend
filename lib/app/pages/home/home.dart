import 'package:flutter/material.dart';
import 'package:firstflutter/app/pages/home/bob_list.dart';
import 'package:firstflutter/app/pages/univ/bob_univ.dart';
import 'package:firstflutter/utils/createRoute.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CreateRoute cr = CreateRoute();

  @override
  Widget build(BuildContext context) {
    int _cnt = 0;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Home"),
            Text('$_cnt'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    cr.createRoute(const BobUnivPage())
                );
              },
              child: const Text('Univ house')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  cr.createRoute(const BobListPage())
                );
              },
              child: const Text('Hi Button')
            )
          ],
        ),
      ),

    );
  }
}

