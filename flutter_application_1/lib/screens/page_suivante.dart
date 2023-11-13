import 'package:flutter/material.dart';

class Pagesuivante extends StatefulWidget {
  const Pagesuivante({Key? key}) : super(key: key);

  @override
  State<Pagesuivante> createState() => _ParamBody();
}

class _ParamBody extends State<Pagesuivante> {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: const Text('Paramètres'),
      );
        
  }
}
