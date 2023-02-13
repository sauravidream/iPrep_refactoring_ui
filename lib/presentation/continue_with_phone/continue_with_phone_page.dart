import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContinueWithPhonePage extends StatelessWidget {
  const ContinueWithPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      persistentFooterButtons: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: Text('Continue with phone'),
        ),
      ],
    );
  }
}
