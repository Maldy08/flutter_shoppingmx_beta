import 'package:flutter/material.dart';

class Ajustes_Ne extends StatefulWidget {
  const Ajustes_Ne({super.key});

  @override
  State<Ajustes_Ne> createState() => _Ajustes_NeState();
}

class _Ajustes_NeState extends State<Ajustes_Ne> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: Center(
        child: Column(
          children: [
            Head(),
            Cuadro_1(),
            SizedBox(
              height: 25,
            ),
            Cuadro_2(),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 75,
                ),
                Text(
                  'Mas opciones',
                  style: TextStyle(fontSize: 20, color: Color(0xff33D49D)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Cuadro_3()
          ],
        ),
      ),
    );
  }
}

class Cuadro_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 140,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: 320,
            height: 21.17,
            child: MaterialButton(
              onPressed: Boton().boton,
              elevation: 0,
              child: Row(
                children: [
                  Image.asset('assets/Icon_tag.png'),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Registro de Promociones',
                    style: TextStyle(fontSize: 17, color: Color(0xff15294B)),
                  ),
                  SizedBox(
                    width: 38.2,
                  ),
                  Image.asset('assets/arrow.png')
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 320,
            height: 21.17,
            child: MaterialButton(
              onPressed: Boton().boton,
              elevation: 0,
              child: Row(
                children: [
                  SizedBox(
                    width: 3,
                  ),
                  Image.asset('assets/Icon_percent.png'),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Registro de Cupones',
                    style: TextStyle(fontSize: 17, color: Color(0xff15294B)),
                  ),
                  SizedBox(
                    width: 73,
                  ),
                  Image.asset('assets/arrow.png')
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 320,
            height: 21.17,
            child: MaterialButton(
              onPressed: Boton().boton,
              elevation: 0,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/Icon_file-plus.png'),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Catalogo de Productos',
                    style: TextStyle(fontSize: 17, color: Color(0xff15294B)),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Image.asset('assets/arrow.png')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cuadro_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 278,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          Container(
            width: 335,
            height: 45,
            decoration: BoxDecoration(
                color: Color(0xff33D49D),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Cuenta',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              width: 320,
              height: 19.22,
              child: MaterialButton(
                onPressed: Boton().boton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/profile.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Cambiar Contrase??a',
                      style: TextStyle(fontSize: 17, color: Color(0xff15294B)),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Image.asset('assets/arrow.png')
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 320,
              height: 19.22,
              child: MaterialButton(
                onPressed: Boton().boton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                        'assets/Icon_material-notifications-active.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Notificaciones',
                      style: TextStyle(fontSize: 17, color: Color(0xff15294B)),
                    ),
                    SizedBox(
                      width: 127,
                    ),
                    Image.asset('assets/arrow.png')
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 320,
              height: 18.15,
              child: MaterialButton(
                onPressed: Boton().boton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/Icon_ionic-md-settings.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Politica de Privacidad',
                      style: TextStyle(fontSize: 17, color: Color(0xff15294B)),
                    ),
                    SizedBox(
                      width: 69,
                    ),
                    Image.asset('assets/arrow.png')
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 320,
              height: 20,
              child: MaterialButton(
                onPressed: Boton().boton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/Icon_headphones.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Soporte',
                      style: TextStyle(fontSize: 17, color: Color(0xff15294B)),
                    ),
                    SizedBox(
                      width: 179,
                    ),
                    Image.asset('assets/arrow.png')
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 320,
              height: 19.22,
              child: MaterialButton(
                onPressed: Boton().boton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/exit.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Cerrar Session',
                      style: TextStyle(fontSize: 17, color: Color(0xff15294B)),
                    ),
                    SizedBox(
                      width: 125,
                    ),
                    Image.asset('assets/arrow.png')
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class Cuadro_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: MaterialButton(
        onPressed: Boton().boton,
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.grey),
              child: Center(
                child: Text(
                  '60x60',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 235,
              height: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Jhon Smith',
                        style:
                            TextStyle(color: Color(0xff15294B), fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 8,
              height: 13,
              child: Image.asset('assets/arrow.png'),
            )
          ],
        ),
      ),
    );
  }
}

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
          height: 170,
        ),
        Container(
          width: 40,
          height: 40,
          child: FloatingActionButton(
            onPressed: Boton().boton,
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            elevation: 0,
            child: Image.asset('assets/Arrow_-_Left.png'),
          ),
        ),
        SizedBox(
          width: 115,
        ),
        Text(
          'Ajustes',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromRGBO(21, 41, 75, 1),
          ),
        )
      ],
    );
  }
}

class Boton extends Ajustes_Ne {
  boton() {
    int x = 1;
    print(1);
  }
}
