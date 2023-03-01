import 'package:flutter/material.dart';

class Msoporte extends StatefulWidget {
  const Msoporte({super.key});

  @override
  State<Msoporte> createState() => _MsoporteState();
}

class _MsoporteState extends State<Msoporte> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Image.asset('assets/image.png'),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 335,
              height: 243,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Enviado!!',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 212, 157, 1),
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Se ha enviado correctamente',
                          style: TextStyle(
                              color: Color.fromRGBO(21, 41, 75, 1),
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'el mensaje a soporte.',
                          style: TextStyle(
                              color: Color.fromRGBO(21, 41, 75, 1),
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Gracias por su ayuda.',
                          style: TextStyle(
                              color: Color.fromRGBO(21, 41, 75, 1),
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: Boton().boton,
                    child: Container(
                      width: 295,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromRGBO(51, 212, 157, 1)),
                      child: Center(
                        child: Text(
                          'Confirmar',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Boton extends Msoporte {
  boton() {
    int x = 1;
    print(x);
  }
}
