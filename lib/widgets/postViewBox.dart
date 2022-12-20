import 'package:flutter/material.dart';

import 'actionsRow.dart';

class PostVIewBox extends StatelessWidget {
  const PostVIewBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade800,
                    blurRadius: 11,
                    offset: const Offset(1, 3),
                  )
                ],
                borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Card(
                    elevation: 11,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(11),
                      child: Image.asset('assets/img/running.gif'),
                    ),
                  ),
                  ActionsRow()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
