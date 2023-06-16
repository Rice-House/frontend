import 'package:flutter/material.dart';

class BobUnivDetailPage extends StatefulWidget {
  const BobUnivDetailPage({super.key});

  @override
  State<BobUnivDetailPage> createState() => _BobUnivDetailPageState();
}

class _BobUnivDetailPageState extends State<BobUnivDetailPage> {
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
              'BobUnivDetailPage',
            ),
          ],
        ),
      ),

    );
  }
}