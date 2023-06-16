import 'package:flutter/material.dart';

class CreateRoute {
  Route createRoute(page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  Widget build(BuildContext context) {
    return const Text(" !! ");
  }
}