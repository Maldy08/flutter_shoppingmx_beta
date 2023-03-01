import 'package:flutter/material.dart';

class Buscar extends StatefulWidget {
  const Buscar({super.key});

  @override
  State<Buscar> createState() => _BuscarState();
}

class _BuscarState extends State<Buscar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(249, 249, 255, 1),
        body: SafeArea(
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, position) {
                return Center(
                    child: position == 0
                        ? Column(
                            children: [
                              head(),
                              SizedBox(
                                height: 20,
                              ),
                              Barra_buscar()
                            ],
                          )
                        : Convinado());
              }),
        ));
  }
}

bool i = true;

class Convinado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 45,
            ),
            Producto(),
            SizedBox(
              width: 20,
            ),
            Negocio(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 45,
            ),
            Producto(),
            SizedBox(
              width: 20,
            ),
            Negocio(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 45,
            ),
            Negocio(),
            SizedBox(
              width: 20,
            ),
            Negocio()
          ],
        )
      ],
    );
  }
}

class Negocio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, refresh) {
      return Row(
        children: [
          Container(
            width: 160,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Cuadro(color)),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 120,
                    ),
                    Container(
                        width: 28,
                        height: 28,
                        child: FloatingActionButton(
                          onPressed: () {
                            refresh(
                              () {
                                cambio_color();
                              },
                            );
                          },
                          elevation: 0,
                          backgroundColor: Cuadro(color),
                          child: Estrella(color),
                        )),
                  ],
                ),
                Container(
                  width: 94,
                  height: 94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffD8D8D8)),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    'Nombre de la',
                    style: TextStyle(fontSize: 18, color: txt(color)),
                  ),
                ),
                Center(
                  child: Text('Empresa',
                      style: TextStyle(fontSize: 18, color: txt(color))),
                ),
                Text(
                  'Giro de la empresa',
                  style: TextStyle(fontSize: 16, color: subtxt(color)),
                )
              ],
            ),
          ),
        ],
      );
    });
  }

  bool color = false;

  Color subtxt(bool cc) {
    if (cc == true)
      return Colors.white;
    else
      return Color(0xff8A8A8F);
  }

  Color txt(bool cc) {
    if (cc == true)
      return Colors.white;
    else
      return Color(0xff1c2340);
  }

  Color Cuadro(bool cc) {
    if (cc == true)
      return Color(0xff33D49D);
    else
      return Colors.white;
  }

  Container Estrella(bool cc) {
    if (cc == false) {
      print(cc);
      return Container(
        width: 30,
        height: 30,
        child: Image.asset('assets/icon-star-2.png'),
      );
    } else {
      print(cc);
      return Container(
        width: 30,
        height: 30,
        child: Image.asset(
          'assets/icon-star_2.png',
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

class Producto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, refresh) {
      return Row(
        children: [
          Container(
            width: 160,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Cuadro(color)),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 120,
                    ),
                    Container(
                        width: 28,
                        height: 28,
                        child: FloatingActionButton(
                          onPressed: () {
                            refresh(
                              () {
                                cambio_color();
                              },
                            );
                          },
                          elevation: 0,
                          backgroundColor: Cuadro(color),
                          child: Estrella(color),
                        )),
                  ],
                ),
                Container(
                  width: 94,
                  height: 94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffD8D8D8)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Producto',
                  style: TextStyle(fontSize: 18, color: txt(color)),
                ),
                Text(
                  'Nombre de empresa',
                  style: TextStyle(fontSize: 16, color: subtxt(color)),
                )
              ],
            ),
          ),
        ],
      );
    });
  }

  bool color = false;

  Color subtxt(bool cc) {
    if (cc == true)
      return Colors.white;
    else
      return Color(0xff8A8A8F);
  }

  Color txt(bool cc) {
    if (cc == true)
      return Colors.white;
    else
      return Color(0xff1c2340);
  }

  Color Cuadro(bool cc) {
    if (cc == true)
      return Color(0xff33D49D);
    else
      return Colors.white;
  }

  Container Estrella(bool cc) {
    if (cc == false) {
      print(cc);
      return Container(
        width: 30,
        height: 30,
        child: Image.asset('assets/icon-star-2.png'),
      );
    } else {
      print(cc);
      return Container(
        width: 30,
        height: 30,
        child: Image.asset(
          'assets/icon-star_2.png',
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

class Barra_buscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 345,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.white),
          child: Row(
            children: [
              Container(
                width: 289,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Buscar....',
                    prefixIcon: Image.asset('assets/Resources_Search.png'),
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: Boton().boton,
                elevation: 0,
                backgroundColor: Colors.white,
                child: Image.asset('assets/Dictation.png'),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class head extends StatelessWidget {
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
          width: 95,
        ),
        Text(
          'Tendencias',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff15294B),
          ),
        ),
        SizedBox(
          width: 80,
        ),
        Container(
          width: 40,
          height: 40,
          child: FloatingActionButton(
            onPressed: Boton().boton,
            backgroundColor: Colors.white,
            elevation: 0,
            child: Image.asset('assets/Group2.png'),
          ),
        )
      ],
    );
  }
}

class Boton extends Buscar {
  boton() {
    int x = 1;
    print(x);
  }
}
