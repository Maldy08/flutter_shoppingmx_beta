import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/29_buscar_promociones.dart';

class Codigo_barras extends StatefulWidget {
  const Codigo_barras({super.key});

  @override
  State<Codigo_barras> createState() => _Codigo_barrasState();
}

class _Codigo_barrasState extends State<Codigo_barras> {
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
        body: Box_central(),
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

class Box_central extends StatelessWidget {
  const Box_central({
    Key? key,
  }) : super(key: key);
  static const TextStyle estilo =
      TextStyle(fontSize: 16, color: Color(0xff15284B));
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 335,
        height: 350,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              'Empresa',
              style: TextStyle(fontSize: 18, color: Color(0xff15284B)),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 106,
                  height: 131,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nombre del',
                      style: estilo,
                    ),
                    Text(
                      'producto /',
                      style: estilo,
                    ),
                    Text(
                      'cupon',
                      style: estilo,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/barcode.png'),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Valido',
                  style: estilo,
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  '00/00/0000 al 00/00/0000',
                  style: estilo,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
