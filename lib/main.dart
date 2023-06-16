import 'package:flutter/material.dart';
import 'package:firstflutter/app/pages/home/home.dart';
import 'package:firstflutter/app/pages/map.dart';
import 'package:firstflutter/app/pages/community/community.dart';
import 'package:firstflutter/app/pages/mypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soongsil Rice House',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List _pages = [HomePage(), MapPage(), CommunityPage(), MypagePage()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:_pages[_selectedIndex],
      ),

      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffFF5C5D),
          unselectedItemColor: Color(0xffFCA184),
          selectedLabelStyle: TextStyle(fontSize: 12),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              // icon: new Image.asset('images/1.0x/icon4.png'),
              // activeIcon: new Image.asset('images/1.0x/newIcon.png'),
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Map"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.commute_sharp),
                label: "Community"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Mypage"
            ),
          ],
        )
      ),

    );
  }
}
