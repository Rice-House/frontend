import 'package:flutter/material.dart';

class BobListPage extends StatefulWidget {
  const BobListPage({super.key});

  @override
  State<BobListPage> createState() => _BobListPageState();
}

class _BobListPageState extends State<BobListPage> {
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
              'BobListPage',
            ),
          ],
        ),
      ),

    );
  }
}