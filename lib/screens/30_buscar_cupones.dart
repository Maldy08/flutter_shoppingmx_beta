import 'package:flutter/material.dart';

class Buscar_cupones extends StatefulWidget {
  const Buscar_cupones({super.key});

  @override
  State<Buscar_cupones> createState() => _Buscar_cuponesState();
}

class _Buscar_cuponesState extends State<Buscar_cupones> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(249, 249, 255, 1),
        body:
            SafeArea(child: ListView.builder(itemBuilder: (context, position) {
          return Center(
              child: position == 0
                  ? Column(
                      children: [
                        Head(),
                        Barra(),
                      ],
                    )
                  : Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Negocio(),
                      ],
                    ));
        })));
  }
}

class Negocio extends StatelessWidget {
  static const TextStyle estilo = TextStyle(
    fontSize: 16,
    color: Color(0xff15294B),
  );
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, refresh) {
      return Container(
        width: 335,
        height: 175,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
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
                        width: 68,
                        height: 86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Empresa', style: estilo),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Giro',
                        style: estilo,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Cupones',
                        style: estilo,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 247,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      FloatingActionButton(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          onPressed: () {
                            refresh(
                              () {
                                cambio_color();
                              },
                            );
                          },
                          child: Estrella(color)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }

  bool color = false;

  Container Estrella(bool cc) {
    if (cc == false) {
      print(cc);
      return Container(
        width: 18,
        height: 18,
        child: Image.asset('assets/icon-star-2.png'),
      );
    } else {
      print(cc);
      return Container(
        width: 18,
        height: 18,
        child: Image.asset(
          'assets/icon-star-2.png',
          color: Color(0xff33D49D),
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

class Barra extends StatefulWidget {
  @override
  State<Barra> createState() => _BarraState();
}

class _BarraState extends State<Barra> {
  int x = 0;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                width: 335,
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Buscar....',
                      prefixIcon: Image.asset('assets/Group_20175.png'),
                      contentPadding: EdgeInsets.all(20)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 105,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Fondo(color1)),
                child: MaterialButton(
                  onPressed: () {
                    refresh(
                      () {
                        cambio_color1();
                        _selectedIndex = 0;
                        cambiar();
                      },
                    );
                  },
                  child: Center(
                    child: Text(
                      'Destacado',
                      style: TextStyle(color: txt(color1), fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 95,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Fondo(color2)),
                child: MaterialButton(
                  onPressed: () {
                    refresh(
                      () {
                        cambio_color2();
                        _selectedIndex = 1;
                        cambiar();
                      },
                    );
                  },
                  child: Center(
                    child: Text(
                      'Producto',
                      style: TextStyle(color: txt(color2), fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 88,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Fondo(color3)),
                child: MaterialButton(
                  onPressed: () {
                    refresh(
                      () {
                        cambio_color3();
                        _selectedIndex = 2;
                        cambiar();
                      },
                    );
                  },
                  child: Center(
                    child: Text(
                      'Negocio',
                      style: TextStyle(color: txt(color3), fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }

  bool color1 = true;

  bool color2 = true;

  bool color3 = true;

  Color txt(bool cc) {
    if (cc == false)
      return Colors.white;
    else
      return Color(0xff15294B);
  }

  Color Fondo(bool cc) {
    if (cc == false) {
      return Color(0xff33D49D);
    } else {
      return Colors.white;
    }
  }

  cambio_color1() {
    if (!color1)
      color1 = true;
    else
      color1 = false;
  }

  cambio_color2() {
    if (!color2)
      color2 = true;
    else
      color2 = false;
  }

  cambio_color3() {
    if (!color3)
      color3 = true;
    else
      color3 = false;
  }

  cambiar() {
    if (_selectedIndex == 0) {
      if (color2 == false) cambio_color2();
      if (color3 == false) cambio_color3();
    } else if (_selectedIndex == 1) {
      if (!color1) cambio_color1();
      if (!color3) cambio_color3();
    } else {
      if (!color1) cambio_color1();
      if (!color2) cambio_color2();
    }
  }
}

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Container(
          width: 40,
          height: 40,
          child: FloatingActionButton(
            onPressed: Boton().boton,
            backgroundColor: Colors.white,
            elevation: 0,
            child: Image.asset('assets/Arrow_-_Left.png'),
          ),
        ),
        SizedBox(
          width: 120,
        ),
        Text(
          'Buscar',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromRGBO(21, 41, 75, 1),
          ),
        ),
        SizedBox(
          width: 100,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: Image.asset('assets/Icon_Outline_Search.png'),
        )
      ],
    );
  }
}

class Boton extends Buscar_cupones {
  boton() {
    int x = 1;
    print(1);
  }
}
