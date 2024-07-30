import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_taxi/pages/onboarding/access.dart';

void main(){
  runApp(const UzumTaxi());
}
class UzumTaxi extends StatelessWidget {
  const UzumTaxi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      home: Access(),
    );
  }
}
