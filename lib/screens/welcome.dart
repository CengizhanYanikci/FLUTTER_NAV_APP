import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const welcome());

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<String> _pageTitles = [
    'Anasayfa Sayfası',
    'Kurumsal Sayfası',
    'İletişim Sayfası',
    'Ayarlar Sayfası',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pageTitles[_selectedIndex],
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          _pageTitles[_selectedIndex],
          style: optionStyle,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Kurumsal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'İletişim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}