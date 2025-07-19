import 'package:flutter/material.dart';
import 'package:online_exam_app/generated/l10n.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Row(),
           Text(S.of(context).title),
          const SizedBox(height: 20),
          FilledButton(onPressed: (){}, child: const Text('Test'))
        ],
      ),
    );
  }
}