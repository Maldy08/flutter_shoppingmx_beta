import 'package:flutter/material.dart';

class Favoritos_vacio extends StatefulWidget {
  const Favoritos_vacio({super.key});

  @override
  State<Favoritos_vacio> createState() => _Favoritos_vacioState();
}

class _Favoritos_vacioState extends State<Favoritos_vacio> {
  int x = 0;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(249, 249, 255, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 335,
                  height: 157,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Aqui se mostraran tus favoritos',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff15294B)),
                      ),
                      Text(
                        'cuando los agregues',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff15294B)),
                      )
                    ],
                  )),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: Barra());
  }

  BottomNavigationBar Barra() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/home.png')),
            activeIcon: Image(
                image: AssetImage('assets/home.png'), color: Color(0xff33D49D)),
            label: ''),
        BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/search.png')),
            label: '',
            activeIcon: Image(
                image: AssetImage('assets/search.png'),
                color: Color(0xff33D49D))),
        BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/favorites.png')),
            activeIcon: Image(
              image: AssetImage('assets/favorites.png'),
              color: Color(0xff33D49D),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/my_profile.png')),
            activeIcon: Image(
              image: AssetImage('assets/my_profile.png'),
              color: Color(0xff33D49D),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/settings.png')),
            activeIcon: Image(
              image: AssetImage('assets/settings.png'),
              color: Color(0xff33D49D),
            ),
            label: '')
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
