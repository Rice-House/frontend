import 'package:flutter/material.dart';
import 'package:firstflutter/app/pages/community/community_write.dart';
import 'package:firstflutter/utils/createRoute.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  CreateRoute cr = CreateRoute();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Community',
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    cr.createRoute(const CommunityWritePage())
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