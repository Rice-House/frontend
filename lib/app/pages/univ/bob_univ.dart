import 'package:flutter/material.dart';
import 'package:firstflutter/app/pages/univ/bob_univ_detail.dart';
import 'package:firstflutter/utils/createRoute.dart';

class BobUnivPage extends StatefulWidget {
  const BobUnivPage({super.key});

  @override
  State<BobUnivPage> createState() => _BobUnivPageState();
}

class _BobUnivPageState extends State<BobUnivPage> {
  CreateRoute cr = CreateRoute();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back')
            ),
            const Text(
              'BobUnivPage',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  cr.createRoute(const BobUnivDetailPage())
                );
              },
              child: Text('BobUnivDetailPage')
            ),
          ],
        ),
      ),

    );
  }
}