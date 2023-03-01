import 'package:flutter/material.dart';

class Contrasena extends StatefulWidget {
  const Contrasena({super.key});

  @override
  State<Contrasena> createState() => _ContrasenaState();
}

class _ContrasenaState extends State<Contrasena> {
  int x = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              head(),
              Image.asset('assets/Illustration-2.png'),
              SizedBox(
                height: 60,
              ),
              box_centro(),
              SizedBox(
                height: 40,
              ),
              botom()
            ],
          ),
        ),
      ),
    );
  }

  Container box_centro() {
    return Container(
      width: 335,
      height: 289,
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Elija una contraseña segura que será',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(21, 41, 75, 1),
              ),
            ),
            Text(
              'fácil de recordar.',
              style:
                  TextStyle(fontSize: 16, color: Color.fromRGBO(21, 41, 75, 1)),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 295,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(249, 249, 255, 1),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 230,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      child: FloatingActionButton(
                        onPressed: boton,
                        elevation: 0,
                        backgroundColor: Color.fromRGBO(249, 249, 255, 1),
                        child: Image.asset('assets/Icon-4.png'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset('assets/Path-2.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Debe de tener 8 caracteres',
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(51, 212, 157, 1)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset('assets/Path-2.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Debe de tener una letra Mayúscula',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(51, 212, 157, 1),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset('assets/Path-3.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Debe contener un numero',
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(21, 41, 75, 1)),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
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
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            elevation: 0,
            child: Image.asset('assets/Arrow_-_Left.png'),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Text(
          'Crea tu Contraseña',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  MaterialButton botom() {
    return MaterialButton(
      onPressed: boton,
      child: Container(
        width: 295,
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromRGBO(51, 212, 157, 1),
            borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Text(
            'Continuar',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }

  boton() {
    x++;
    print(x);
  }
}
