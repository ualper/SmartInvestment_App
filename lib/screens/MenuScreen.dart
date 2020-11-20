import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() => runApp(MenuScreen());

class MenuScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainMenuScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainMenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State {
  int currentIndex;

  @override
  void initState() {
    super.initState();

    currentIndex = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Smart Investment Menu'),
        centerTitle: true,
        backgroundColor: Colors.teal[500],
      ),
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0.2,
        backgroundColor: Colors.white54,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
        currentIndex: currentIndex,
        fabLocation: BubbleBottomBarFabLocation.end,
        onTap: changePage,
        items: [
          BubbleBottomBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(
              Icons.reorder,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.reorder,
              color: Colors.indigo,
            ),
            title: Text('Watchlist'),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(
              Icons.monetization_on_outlined,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.monetization_on,
              color: Colors.indigo,
            ),
            title: Text('Market Info'),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(
              Icons.polymer,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.polymer,
              color: Colors.indigo,
            ),
            title: Text('News'),
          ),
        ],
      ),
      body: (currentIndex == 0)
          ? Icon(
              Icons.reorder,
              size: 150.0,
              color: Colors.red,
            )
          : (currentIndex == 1)
              ? Icon(
                  Icons.monetization_on,
                  size: 150.0,
                  color: Colors.red,
                )
              : Icon(
                  Icons.polymer,
                  size: 150.0,
                  color: Colors.red,
                ),
    );
  }
}
