import 'dart:ffi';

import 'package:flutter/material.dart';

class Restablecer2 extends StatefulWidget {
  const Restablecer2({super.key});

  @override
  State<Restablecer2> createState() => _Restablecer2();
}

class _Restablecer2 extends State<Restablecer2> {
  int x = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: Stack(children: [
        Center(
            child: Column(
          children: [
            head(),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/Illustration-3.png'),
            SizedBox(
              height: 35,
            ),
            Box_central()
          ],
        )),
        Expanded(
            child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(21, 41, 75, .5)),
        )),
        Centro()
      ]),
    );
  }

  Center Centro() {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 390,
          ),
          Container(
            width: 335,
            height: 218,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Column(
              children: [
                Container(
                  width: 335,
                  height: 50,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(246, 142, 33, 1)),
                  child: Center(
                    child: Text(
                      'Correo de restablecimiento enviado',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Se ha enviado un correo a',
                        style: TextStyle(
                            color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'su dirección de correo para restablecer',
                        style: TextStyle(
                            color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'su contraseña',
                        style: TextStyle(
                            color: Color.fromRGBO(21, 41, 75, 1), fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        onPressed: boton,
                        child: Container(
                          width: 189,
                          height: 41,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.5),
                              color: Color.fromRGBO(51, 212, 157, 1)),
                          child: Center(
                            child: Text(
                              'OK',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
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
        ],
      ),
    );
  }

  Container Box_central() {
    return Container(
      width: 335,
      height: 289,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Le hemos enviado un correo con el que ',
            style:
                TextStyle(fontSize: 16, color: Color.fromRGBO(21, 41, 75, 1)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'se registro para recuperar su contraseña',
            style:
                TextStyle(fontSize: 16, color: Color.fromRGBO(21, 41, 75, 1)),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 295,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromRGBO(249, 249, 255, 1),
                borderRadius: BorderRadius.circular(25)),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'johndoe@mail.com',
                  prefixIcon: Image.asset('assets/Icon_material-email-2.png')),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Correo enviado a ex*****@gmail.com',
            style:
                TextStyle(fontSize: 16, color: Color.fromRGBO(246, 142, 33, 1)),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: boton(),
            child: Container(
              width: 295,
              height: 50,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(51, 212, 157, 1),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  'Enviar',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
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
            backgroundColor: Colors.white,
            elevation: 0,
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
