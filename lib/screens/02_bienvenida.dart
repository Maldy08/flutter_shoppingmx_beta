import 'package:flutter/material.dart';

class Bienvenida extends StatefulWidget {
  const Bienvenida({super.key});

  @override
  State<Bienvenida> createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 75,
            ),
            Text(
              'Sign in',
              style: TextStyle(
                color: Color.fromRGBO(21, 41, 75, 1),
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Image.asset('assets/Illustration.png'),
            SizedBox(
              height: 0,
            ),
            Container(
              width: 335,
              height: 574,
              color: Color.fromRGBO(249, 249, 255, 1), //cambiar de color
              child: Column(
                children: [
                  Box_centro(),
                  Lineas_centro(),
                  Botones_sociales(),
                  Parte_abajo()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column Parte_abajo() {
    return Column(
      children: [
        SizedBox(
          height: 0,
        ),
        TextButton(
            onPressed: boton,
            child: Text(
              'Has olvidado tu contraseña?', //posible boton
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(246, 142, 33, 1)),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No tienes cuenta?',
              style: TextStyle(fontSize: 16, color: Color(0xff15294B)),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
                onPressed: boton,
                child: Text(
                  'Registrate aqui',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(246, 142, 33, 1)),
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              'Eres negocio?',
              style: TextStyle(color: Color(0xff15294B), fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
                onPressed: boton,
                child: Text(
                  'Registrate aqui',
                  style: TextStyle(fontSize: 16, color: Color(0xffF68E21)),
                ))
          ],
        )
      ],
    );
  }

  Row Botones_sociales() {
    return Row(
      children: [
        FloatingActionButton(
          onPressed: boton,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          elevation: 0,
          child: Image.asset('assets/Icon_facebook.png'),
        ),
        SizedBox(
          width: 37,
        ),
        FloatingActionButton(
          onPressed: boton,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          elevation: 0,
          child: Image.asset('assets/Icon_Google.png'),
        ),
        SizedBox(
          width: 37,
        ),
        FloatingActionButton(
          onPressed: boton,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          elevation: 0,
          child: Image.asset('assets/Icon_twitter.png'),
        ),
        SizedBox(
          width: 37,
        ),
        FloatingActionButton(
          onPressed: boton,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          elevation: 0,
          child: Image.asset('assets/Icon_Apple.png'),
        ),
      ],
    );
  }

  Container Lineas_centro() {
    return Container(
      child: Row(
        children: [
          SizedBox(
            height: 90,
            width: 2,
          ),
          CustomPaint(
            painter: linea(),
          ),
          SizedBox(
            width: 150,
          ),
          Container(
            width: 30,
            height: 43,
            child: Text(
              'O',
              style: TextStyle(
                  fontSize: 40, color: Color.fromRGBO(246, 142, 33, 1)),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CustomPaint(
            painter: linea(),
          )
        ],
      ),
    );
  }

  Material Box_centro() {
    return Material(
      elevation: 0,
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Container(
        width: 335,
        height: 284,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                width: 295,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromRGBO(249, 249, 255, 1),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'johndoe@mail.com',
                      prefixIcon:
                          Image.asset('assets/Icon_material-email.png')),
                )),
            SizedBox(
              height: 15,
            ),
            Container(
                width: 295,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 249, 255, 1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '**********',
                    prefixIcon: Image.asset('assets/Icon_awesome-lock.png'),
                  ),
                )),
            Row(
              children: [
                SizedBox(
                  width: 25,
                  height: 55,
                ),
                Material(
                  elevation: 0,
                  color: Color.fromRGBO(51, 212, 157, 1),
                  borderRadius: BorderRadius.circular(3),
                  child: Stack(children: [
                    Container(
                      width: 16,
                      height: 16,
                      child: MaterialButton(
                        onPressed: boton,
                      ),
                    ),
                  ]),
                ),
                Text(
                  '   Recordar',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            MaterialButton(
              onPressed: boton,
              child: Material(
                elevation: 0,
                color: Color.fromRGBO(51, 212, 157, 1),
                borderRadius: BorderRadius.circular(25),
                child: Container(
                    width: 295,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Iniciar sesion',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  boton() {
    x++;
    print(x);
  }
}

class linea extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..color = Color.fromRGBO(246, 142, 33, 1)
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final path = new Path();
    path.lineTo(130, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(linea oldDelegate) => true;
}
