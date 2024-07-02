import 'package:flutter/material.dart';

class NavigationBottomScreen extends StatefulWidget {
  const NavigationBottomScreen({super.key});

  @override
  State<NavigationBottomScreen> createState() => _NavigationBottomScreenState();
}

class _NavigationBottomScreenState extends State<NavigationBottomScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Navigation Bar",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: _currentIndex == 0
                  ? Color.fromARGB(255, 4, 184, 244)
                  : _currentIndex == 1
                      ? Color.fromARGB(255, 94, 150, 196)
                      : Color.fromARGB(255, 15, 10, 12),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 9, 1, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _currentIndex = 0;
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                    color: _currentIndex == 0 ? Colors.green : Colors.black,
                    child: const Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _currentIndex = 1;
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                    color: _currentIndex == 1 ? Colors.green : Colors.black,
                    child: const Column(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _currentIndex = 2;
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                    color: _currentIndex == 2 ? Colors.green : Colors.black,
                    child: const Column(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          "settings",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
