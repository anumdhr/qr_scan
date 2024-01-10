import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_scanner/qr_home_page.dart';
import 'package:qr_scanner/qr_scan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
   QrHomePage(),
    QrScanPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Create QR',
            icon: Icon(
              Icons.qr_code_scanner,
            ),
          ),
        BottomNavigationBarItem(
          label: 'Scan QR',
          icon: Icon(
            Icons.qr_code,
          ),
        ),
      ],
        currentIndex: _selectedIndex,
        onTap: (value) {
          _selectedIndex = value;
          setState(() {

          });
        },
      ),
      body: pages[_selectedIndex],
    );
  }
}



