import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import 'contact/contact_page.dart';
import 'homepage/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // add the app bar
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          width: 150,
          color: Colors.white,
        ),
      ),

      // add the body
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: IndexedStack(
          // specify the current tab
          index: _selectedIndex,
          children: const [
            HomePage(),
            ContactPage(),
          ],
        ),
      ),

      // add the molten bottom navigation bar
      bottomNavigationBar: MoltenBottomNavigationBar(
        domeHeight: 0,
        barColor: Colors.redAccent,
        selectedIndex: _selectedIndex,
        barHeight: 80,
        domeCircleColor: Colors.white,
        // specify what will happen when a tab is clicked
        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
          });
        },
        // insert as many tabs as you like
        tabs: [
          MoltenTab(
            icon: const Icon(Icons.home_rounded),
            selectedColor: Colors.redAccent,
            title: const Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          MoltenTab(
            icon: const Icon(Icons.contact_support_rounded),
            selectedColor: Colors.redAccent,
            title: const Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Text(
                'Contact',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
