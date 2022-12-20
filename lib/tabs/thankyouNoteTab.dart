import 'package:flutter/material.dart';

class ThankYouNote extends StatelessWidget {
  const ThankYouNote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text(
            "Thank You Note.",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'Thank You for the fun competition.',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Salutations, Sid.",
            style: TextStyle(fontSize: 20),
          )
        ]);
  }
}
