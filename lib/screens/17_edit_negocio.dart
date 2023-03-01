import 'package:flutter/material.dart';

class Edit_ne extends StatefulWidget {
  const Edit_ne({super.key});

  @override
  State<Edit_ne> createState() => _Edit_neState();
}

class _Edit_neState extends State<Edit_ne> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: Center(
        child: ListView(
          children: [
            Head(),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Box_Central(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

String Nom = "Nombre Completo";
String Giro = "Giro de la empresa";
String Direccion = "Direccion";
String Encargado = "Encargado";
String Correo = "Correo";
String Telefono = "Telefono";
String Num_emp = "Numero de empleados";
String Horario = "Horario de atencion";
String Ciudad = "Ciudad en la que se ubica";
String Estado = "Estado en la que se ubica";
String Pais = "Pais en la que se ubica";
String ID = "ID";
bool edit1 = true;
bool edit2 = true;
bool edit3 = true;
bool edit4 = true;
bool edit5 = true;
bool edit6 = true;
bool edit7 = true;
bool edit8 = true;
bool edit9 = true;
bool edit10 = true;
bool edit11 = true;
bool edit12 = true;

class Box_Central extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, refresh) {
      return Container(
        width: 335,
        height: 1010,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 99,
                  height: 99,
                  child: FloatingActionButton(
                    onPressed: Boton().boton,
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Image.asset('assets/Profile_image.png'),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 295,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Nom = texto;
                      },
                      initialValue: Nom,
                      readOnly: edit1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar1();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Giro = texto;
                      },
                      initialValue: Giro,
                      readOnly: edit2,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar2();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Direccion = texto;
                      },
                      initialValue: Direccion, //cambiar a seleccion
                      readOnly: edit3,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar3();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Encargado = texto;
                      },
                      initialValue: Encargado, //cambiar a seleccion
                      readOnly: edit4,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar4();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Correo = texto;
                      },
                      initialValue: Correo, //cambiar a seleccion
                      readOnly: edit5,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar5();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Telefono = texto;
                      },
                      initialValue: Telefono, //cambiar a seleccion
                      readOnly: edit6,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar6();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Num_emp = texto;
                      },
                      initialValue: Num_emp, //cambiar a seleccion
                      readOnly: edit7,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar7();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Horario = texto;
                      },
                      initialValue: Horario, //cambiar a seleccion
                      readOnly: edit8,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar8();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Ciudad = texto;
                      },
                      initialValue: Ciudad, //cambiar a seleccion
                      readOnly: edit9,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar9();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Estado = texto;
                      },
                      initialValue: Estado, //cambiar a seleccion
                      readOnly: edit10,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar10();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        Pais = texto;
                      },
                      initialValue: Pais, //cambiar a seleccion
                      readOnly: edit11,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar11();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
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
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF9F9FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 219,
                    height: 50,
                    child: TextFormField(
                      onChanged: (texto) {
                        ID = texto;
                      },
                      initialValue: ID, //cambiar a seleccion
                      readOnly: edit12,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Color(0xff15294B)),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      refresh(
                        () {
                          editar12();
                        },
                      );
                    },
                    elevation: 0,
                    backgroundColor: Color(0xffF9F9FF),
                    child: Container(
                        width: 14,
                        height: 14,
                        child: Image.asset('assets/Icon_awesome-pencil.png')),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 107,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xff33D49D),
                  ),
                  child: MaterialButton(
                    onPressed: Boton().boton,
                    child: Center(
                      child: Text(
                        'Guardar',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            )
          ],
        ),
      );
    });
  }

  editar1() {
    if (edit1 == true)
      edit1 = false;
    else
      edit1 = true;
  }

  editar2() {
    if (edit2 == true)
      edit2 = false;
    else
      edit2 = true;
  }

  editar3() {
    if (edit3 == true)
      edit3 = false;
    else
      edit3 = true;
  }

  editar4() {
    if (edit4 == true)
      edit4 = false;
    else
      edit4 = true;
  }

  editar5() {
    if (edit5 == true)
      edit5 = false;
    else
      edit5 = true;
  }

  editar6() {
    if (edit6 == true)
      edit6 = false;
    else
      edit6 = true;
  }

  editar7() {
    if (edit7 == true)
      edit7 = false;
    else
      edit7 = true;
  }

  editar8() {
    if (edit8 == true)
      edit8 = false;
    else
      edit8 = true;
  }

  editar9() {
    if (edit9 == true)
      edit9 = false;
    else
      edit9 = true;
  }

  editar10() {
    if (edit10 == true)
      edit10 = false;
    else
      edit10 = true;
  }

  editar11() {
    if (edit11 == true)
      edit11 = false;
    else
      edit11 = true;
  }

  editar12() {
    if (edit12 == true)
      edit12 = false;
    else
      edit12 = true;
  }
}

class Head extends StatelessWidget {
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
          width: 125,
        ),
        Text(
          'Editar',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromRGBO(21, 41, 75, 1),
          ),
        ),
      ],
    );
  }
}

class Boton extends Edit_ne {
  boton() {
    int x = 1;
    print(1);
  }
}
