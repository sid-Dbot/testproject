import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import 'tabs/homeTab.dart';
import 'tabs/thankyouNoteTab.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[100],
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: NewGradientAppBar(
            title: const Text('Your App'),
            gradient: const LinearGradient(colors: [
              Colors.black,
              Colors.red,
              Colors.blue,
              Colors.orange,
            ]),
            bottom: const TabBar(
                tabs: [Icon(Icons.home_filled), Icon(Icons.details)]),
          ),
          body: const TabBarView(
            children: [
              HomeTab(),
              ThankYouNote(),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MainApp());
