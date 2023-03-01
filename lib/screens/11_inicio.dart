import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
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
        body: SafeArea(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, position) {
                  return Combinado();
                })),
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

class Combinado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Cuadro_Producto(), Cuadro_Negocio()],
    );
  }
}

class Cuadro_Producto extends StatelessWidget {
  static const TextStyle estilo =
      TextStyle(fontSize: 16, color: Color(0xff15294B));
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, refresh) {
      return Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Stack(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 346,
                  height: 157,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: MaterialButton(
                    onPressed: Boton().boton,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 95,
                          height: 82,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey),
                          child: Center(
                            child: Text('Imagen'),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Producto', style: Cuadro_Producto.estilo),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Promociones destacadas',
                              style: Cuadro_Producto.estilo,
                            ),
                            Text(
                              '(Diferentes negocios)',
                              style: Cuadro_Producto.estilo,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 310,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        refresh(
                          () {
                            cambio_color();
                          },
                        );
                      },
                      elevation: 0,
                      backgroundColor: Colors.white,
                      child: Estrella(color),
                    )
                  ],
                ),
              ],
            )
          ]),
        ],
      );
    });
  }

  bool color = false;

  Container Estrella(bool cc) {
    if (cc == false) {
      print(cc);
      return Container(
        width: 30,
        height: 30,
        child: Image.asset('assets/Star.png'),
      );
    } else {
      print(cc);
      return Container(
        width: 30,
        height: 30,
        child: Image.asset(
          'assets/Star2.png',
        ),
      );
    }
  }

  cambio_color() {
    if (color == false)
      color = true;
    else
      color = false;
  }
}

class Cuadro_Negocio extends StatelessWidget {
  static const TextStyle estilo =
      TextStyle(fontSize: 16, color: Color(0xff15294B));

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, refresh) {
      return Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 346,
                height: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: MaterialButton(
                  onPressed: Boton().boton,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 84,
                                height: 131,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey),
                                child: Center(
                                  child: Text(
                                    'Imagen',
                                    style: estilo,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Negocio',
                                style: estilo,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Promociones Destacadas',
                                style: estilo,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Cupones',
                                style: estilo,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Productos Destacados',
                                style: estilo,
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 255,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  refresh(
                                    () {
                                      cambio_color();
                                    },
                                  );
                                },
                                elevation: 0,
                                backgroundColor: Colors.white,
                                child: Estrella(color),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }

  bool color = false;

  Container Estrella(bool cc) {
    if (cc == false) {
      print(cc);
      return Container(
        width: 30,
        height: 30,
        child: Image.asset('assets/Star.png'),
      );
    } else {
      print(cc);
      return Container(
        width: 30,
        height: 30,
        child: Image.asset(
          'assets/Star2.png',
        ),
      );
    }
  }

  cambio_color() {
    if (color == false)
      color = true;
    else
      color = false;
  }
}

class Boton extends Inicio {
  int x = 1;
  boton() {
    print(x);
  }
}
