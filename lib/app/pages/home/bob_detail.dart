import 'package:flutter/material.dart';

class BobDetailPage extends StatefulWidget {
  const BobDetailPage({super.key});

  @override
  State<BobDetailPage> createState() => _BobDetailPageState();
}

class _BobDetailPageState extends State<BobDetailPage> {
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
              'BobDetailPage',
            ),
          ],
        ),
      ),

    );
  }
}