import 'package:flutter/material.dart';

//dart package imports(based on dart importation)
import 'package:testapp/curr_con.dart';

//relative  imports---> from js web
// import 'CurrCon.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrConverter(),
    );
  }
}
