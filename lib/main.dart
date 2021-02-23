import 'package:iphone_integration/url_luncher/url_luncher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Base(child: Luncher(),));
}

class Base extends StatelessWidget {
  Base({@required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: child,
        ),
      ),
    );
  }
}
