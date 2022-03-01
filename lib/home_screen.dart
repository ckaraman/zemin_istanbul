library home_page;

import 'package:flutter/material.dart';

part 'shop_screen.dart';
part 'profile_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = const <Widget>[
    HomeScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          bottomNavBarItem(Icons.home, "Anasayfa"),
          bottomNavBarItem(Icons.shop, "Mağaza"),
          bottomNavBarItem(Icons.person, "Profil"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: onTap,
      ),
    );
  }

  BottomNavigationBarItem bottomNavBarItem(IconData icon, String text) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: text,
    );
  }

  void onTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Anasayfa',
            style: Theme.of(context).textTheme.headline4,
          ),
          Image.network(_url),
          ElevatedButton(onPressed: onPressed, child: const Text('Tarat'))
        ],
      ),
    );
  }

  void onPressed() {
    debugPrint("Scanning");
  }
}

String _url =
    "https://cdn.bestwebtip.com/8460918/scaricare_le_mappe_di_google_maps_e_salvare_cartine_da_stampare.jpg.webp";
