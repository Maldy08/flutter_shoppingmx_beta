import 'package:flutter/material.dart';

class Cambiar extends StatefulWidget {
  const Cambiar({super.key});

  @override
  State<Cambiar> createState() => _CambiarState();
}

class _CambiarState extends State<Cambiar> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              head(),
              Image.asset('assets/Group-1.png'),
              SizedBox(
                height: 50,
              ),
              Box_central()
            ],
          ),
        ),
      ),
    );
  }

  Container Box_central() {
    return Container(
      width: 335,
      height: 304,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Container(
            width: 295,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromRGBO(249, 249, 255, 1),
                borderRadius: BorderRadius.circular(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 240,
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Antigua Contraseña',
                        border: InputBorder.none),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  child: FloatingActionButton(
                    onPressed: boton,
                    backgroundColor: Color.fromRGBO(249, 249, 255, 1),
                    elevation: 0,
                    child: Image.asset('assets/Icon-4.png'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 295,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromRGBO(249, 249, 255, 1),
                borderRadius: BorderRadius.circular(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 240,
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Nueva Contraseña', border: InputBorder.none),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  child: FloatingActionButton(
                    onPressed: boton,
                    backgroundColor: Color.fromRGBO(249, 249, 255, 1),
                    elevation: 0,
                    child: Image.asset('assets/Icon-4.png'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 295,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromRGBO(249, 249, 255, 1),
                borderRadius: BorderRadius.circular(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 240,
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Confirmar Contraseña',
                        border: InputBorder.none),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  child: FloatingActionButton(
                    onPressed: boton,
                    backgroundColor: Color.fromRGBO(249, 249, 255, 1),
                    elevation: 0,
                    child: Image.asset('assets/Icon-4.png'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
                      'Guardar',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  boton() {
    x = 1;
    print(1);
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
          width: 30,
        ),
        Text(
          'Cambio de Contraseña',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromRGBO(21, 41, 75, 1),
          ),
        )
      ],
    );
  }
}
