import 'package:flutter/material.dart';

class Codigo extends StatefulWidget {
  const Codigo({super.key});

  @override
  State<Codigo> createState() => _CodigoState();
}

class _CodigoState extends State<Codigo> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: Center(
        child: Column(
          children: [
            head(),
            Container(
              width: 335,
              height: 320,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Box_center(),
            )
          ],
        ),
      ),
    );
  }

  Column Box_center() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Se ha enviado un correo a',
          style: TextStyle(color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'su dirección de correo para restablecer',
          style: TextStyle(color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'su contraseña',
          style: TextStyle(color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
        ),
        SizedBox(
          height: 25,
        ),
        Entrada_nums(),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No ha reicido el codigo?',
              style:
                  TextStyle(color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Reenviar ',
              style: TextStyle(
                  color: Color.fromRGBO(246, 142, 33, 1), fontSize: 16),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        MaterialButton(
          onPressed: boton,
          child: Container(
            width: 295,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(51, 212, 157, 1)),
            child: Center(
              child: Text(
                'Enviar',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        )
      ],
    );
  }

  Column Entrada_nums() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 14,
            ),
            Container(
              width: 66,
              height: 66,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 249, 255, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      cursorColor: Color.fromRGBO(51, 212, 157, 1),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(1)),
                      style: TextStyle(
                          color: Color.fromRGBO(51, 212, 157, 1), fontSize: 28),
                      maxLength: 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Container(
              width: 66,
              height: 66,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 249, 255, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      cursorColor: Color.fromRGBO(51, 212, 157, 1),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(1)),
                      style: TextStyle(
                          color: Color.fromRGBO(51, 212, 157, 1), fontSize: 28),
                      maxLength: 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Container(
              width: 66,
              height: 66,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 249, 255, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      cursorColor: Color.fromRGBO(51, 212, 157, 1),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(1)),
                      style: TextStyle(
                          color: Color.fromRGBO(51, 212, 157, 1), fontSize: 28),
                      maxLength: 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Container(
              width: 66,
              height: 66,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 249, 255, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      cursorColor: Color.fromRGBO(51, 212, 157, 1),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(1)),
                      style: TextStyle(
                          color: Color.fromRGBO(51, 212, 157, 1), fontSize: 28),
                      maxLength: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 25,
            ),
            CustomPaint(
              painter: linea(),
            ),
          ],
        )
      ],
    );
  }

  Row head() {
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
            onPressed: boton,
            elevation: 0,
            backgroundColor: Colors.white,
            child: Image.asset('assets/Arrow_-_Left.png'),
          ),
        ),
        SizedBox(
          width: 75,
        ),
        Center(
          child: Column(
            children: [
              Text(
                'Has olvidado',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(21, 41, 75, 1),
                ),
              ),
              Text(
                'tu contraseña?',
                style: TextStyle(
                    fontSize: 24, color: Color.fromRGBO(21, 41, 75, 1)),
              )
            ],
          ),
        ),
      ],
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
      ..color = Color.fromRGBO(51, 212, 157, 1)
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final path = new Path();
    path.lineTo(45, 0);
    //path.moveTo(80, 0);
    //path.lineTo(125, 0);
    //path.moveTo(160, 0);
    //path.lineTo(205, 0);
    //path.moveTo(240, 0);
    //path.lineTo(285, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(linea oldDelegate) => true;
}
