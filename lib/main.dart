import 'package:flutter/material.dart';
import 'package:flutter_assignment/choosing_Class.dart';
import 'package:flutter_assignment/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter assignment',
      home: Main(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(
        'the hight of the device :     ${MediaQuery.of(context).size.height}');
    print(
        ' the hight of the device :      ${MediaQuery.of(context).size.width} ');

    return ChangeNotifierProvider<ChangingIndex>(
        create: (context) => ChangingIndex(), child: const ChoosingClass());
  }
}
