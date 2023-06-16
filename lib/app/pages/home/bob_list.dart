import 'package:flutter/material.dart';
import 'package:firstflutter/app/pages/home/bob_detail.dart';
import 'package:firstflutter/utils/createRoute.dart';

class BobListPage extends StatefulWidget {
  const BobListPage({super.key});

  @override
  State<BobListPage> createState() => _BobListPageState();
}

class _BobListPageState extends State<BobListPage> {
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
              'BobListPage',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  cr.createRoute(const BobDetailPage())
                );
              },
              child: Text('BobDetail')
            ),
          ],
        ),
      ),

    );
  }
}