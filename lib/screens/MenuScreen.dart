import 'pages/Pages.dart';
import 'package:flutter/material.dart';

void main() => runApp(MenuScreen());

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuScreenPage(),
    );
  }
}

class MenuScreenPage extends StatefulWidget {
  MenuScreenPage({Key key}) : super(key: key);

  @override
  _MenuScreenPageState createState() => _MenuScreenPageState();
}

class _MenuScreenPageState extends State<MenuScreenPage> {
  int _selectedItem = 0;
  var _pages = [FirstPage(), SecondPage(), ThirdPage()];
  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.reorder), title: Text('Watchlist')),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded), title: Text('Market Info')),
          BottomNavigationBarItem(
              icon: Icon(Icons.language), title: Text('News'))
        ],
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
            _pageController.animateToPage(_selectedItem,
                duration: Duration(milliseconds: 200), curve: Curves.linear);
          });
        },
      ),
    );
  }
}
