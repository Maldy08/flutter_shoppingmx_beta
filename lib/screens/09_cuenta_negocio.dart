import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cuentane extends StatefulWidget {
  const Cuentane({super.key});

  @override
  State<Cuentane> createState() => _CuentaneState();
}

class _CuentaneState extends State<Cuentane> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: SafeArea(child: Box()),
    );
  }
}

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        head(),
        SizedBox(
          height: 30,
        ),
        Contenido(),
      ],
    );
  }
}

class Contenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 335,
            height: 1090,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 99,
                  height: 99,
                  child: FloatingActionButton(
                    onPressed: Boton().boton,
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Image.asset('assets/Profile_image.png'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Layer('Nombre del negocio'),
                SizedBox(
                  height: 15,
                ),
                Layer('Giro de la empresa'),
                SizedBox(
                  height: 15,
                ),
                Layer('Direccion'),
                SizedBox(
                  height: 15,
                ),
                Layer('Encargado'),
                SizedBox(
                  height: 15,
                ),
                Layer('Correo'),
                SizedBox(
                  height: 15,
                ),
                Layer_nums('Telefono'),
                SizedBox(
                  height: 15,
                ),
                Layer_nums('Numero de empleados'),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 285,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffF9F9FF)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 50,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 4,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '00:00',
                              contentPadding: EdgeInsets.all(2)),
                        ),
                      ),
                      Text(
                        '-',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff15294B)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        height: 50,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 4,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '00:00',
                              contentPadding: EdgeInsets.all(2)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Layer('Ciudad en la que se ubica'),
                SizedBox(
                  height: 15,
                ),
                Layer('Estado en la que se ubica'),
                SizedBox(
                  height: 15,
                ),
                Layer('Pais en la que se ubica'),
                SizedBox(
                  height: 15,
                ),
                Layer('ID'),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Agregar Catalogo de Productos',
                  style: TextStyle(fontSize: 18, color: Color(0xff33D49D)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    MaterialButton(
                      onPressed: Boton().boton,
                      elevation: 0,
                      child: Container(
                        width: 107,
                        height: 42,
                        decoration: BoxDecoration(
                            color: Color(0xff33D49D),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Text(
                            'Mas tarde',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    MaterialButton(
                      onPressed: Boton().boton,
                      elevation: 0,
                      child: Container(
                        width: 107,
                        height: 42,
                        decoration: BoxDecoration(
                            color: Color(0xff33D49D),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Text(
                            'Agregar',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ya tienes cuenta?',
                      style: TextStyle(fontSize: 16, color: Color(0xff15294B)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TextButton(
                        onPressed: Boton().boton,
                        child: Text(
                          'Inicia sesion',
                          style:
                              TextStyle(color: Color(0xffF68E21), fontSize: 16),
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class Layer extends StatelessWidget {
  final String text;
  const Layer(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      height: 50,
      decoration: BoxDecoration(
          color: Color(0xffF9F9FF), borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Container(
            width: 265,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Layer_nums extends StatelessWidget {
  final String text;
  const Layer_nums(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      height: 50,
      decoration: BoxDecoration(
          color: Color(0xffF9F9FF), borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Container(
            width: 265,
            height: 50,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Boton extends Cuentane {
  int x = 1;
  boton() {
    print(x);
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
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            elevation: 0,
            child: Image.asset('assets/Arrow_-_Left.png'),
          ),
        ),
        SizedBox(
          width: 115,
        ),
        Text(
          'Sign up',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
