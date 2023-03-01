import 'package:flutter/material.dart';

class Notificaciones extends StatefulWidget {
  const Notificaciones({super.key});

  @override
  State<Notificaciones> createState() => _NotificacionesState();
}

class _NotificacionesState extends State<Notificaciones> {
  int x = 0;
  bool l1 = true;
  bool l2 = true;
  bool l3 = true;
  bool l4 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: Center(
        child: Column(
          children: [
            head(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 335,
              height: 53,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Activar Notificaciones',
                    style: TextStyle(
                        color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Switch.adaptive(
                      value: l1,
                      activeColor: Color.fromRGBO(51, 212, 157, 1),
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          l1 = value;
                        });
                      })
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 335,
              height: 53,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Descuentos',
                    style: TextStyle(
                        color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Switch.adaptive(
                      value: l2,
                      activeColor: Color.fromRGBO(51, 212, 157, 1),
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          l2 = value;
                        });
                      })
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 335,
              height: 53,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Promociones',
                    style: TextStyle(
                        color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Switch.adaptive(
                      value: l3,
                      activeColor: Color.fromRGBO(51, 212, 157, 1),
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          l3 = value;
                        });
                      })
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 335,
              height: 53,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Otras Notificaciones',
                    style: TextStyle(
                        color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
                  ),
                  SizedBox(
                    width: 95,
                  ),
                  Switch.adaptive(
                      value: l4,
                      activeColor: Color.fromRGBO(51, 212, 157, 1),
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          l4 = value;
                        });
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  boton() {
    x = 1;
    print(1);
  }

  Column head() {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Row(
          children: [
            SizedBox(
              width: 45,
            ),
            Container(
              width: 40,
              height: 40,
              child: FloatingActionButton(
                onPressed: boton,
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                elevation: 0,
                child: Image.asset('assets/Arrow_-_Left.png'),
              ),
            ),
            SizedBox(
              width: 45,
            ),
            Text(
              'Notificaciones',
              style: TextStyle(
                fontSize: 24,
                color: Color.fromRGBO(21, 41, 75, 1),
              ),
            )
          ],
        ),
      ],
    );
  }
}
