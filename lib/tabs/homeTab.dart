import 'package:flutter/material.dart';

import '../widgets/postViewBox.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const PostVIewBox();
      },
    );
  }
}
