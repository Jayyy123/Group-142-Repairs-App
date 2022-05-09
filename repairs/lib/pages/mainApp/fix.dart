import 'package:flutter/material.dart';

class Fix extends StatelessWidget {
  const Fix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text('Another screen') ,
      ),
    );
  }
}
