import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kcmobile/pages/answers.dart';
import 'package:kcmobile/pages/expore.dart';
import 'package:kcmobile/pages/home.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  final List<Widget> _pages = [
    const HomePage(),
    const ExplorePage(),
    const AnswersPage(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (current) {
          setState(() {
            index = current;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.activity),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "answers",
          ),
        ],
      ),
      body: _pages[index],
    );
  }
}
