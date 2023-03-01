import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class Cuentap extends StatefulWidget {
  const Cuentap({super.key});

  @override
  State<Cuentap> createState() => _CuentapState();
}

class _CuentapState extends State<Cuentap> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: SafeArea(
        child: Box(),
      ),
    );
  }
}

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              head(),
              SizedBox(
                height: 45,
              ),
              Contenido_central(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Contenido_central extends StatefulWidget {
  const Contenido_central({super.key});

  @override
  State<Contenido_central> createState() => _Contenido_centralState();
}

class _Contenido_centralState extends State<Contenido_central> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 335,
        height: 802,
        decoration: BoxDecoration(
            color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(15)),
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
                backgroundColor: Color(0xffF9F9FF),
                elevation: 0,
                child: Image.asset('assets/Profile_image.png'),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 295,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffF9F9FF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Container(
                  width: 265,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nombre Completo',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 295,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffF9F9FF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Container(
                  width: 265,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Edad',
                      contentPadding: EdgeInsets.all(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 295,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffF9F9FF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 190,
                      height: 50,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              texto(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(0, 0, 0, .7)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    PopupMenuButton<SampleItem>(
                      initialValue: selectedMenu,
                      onSelected: (SampleItem item) {
                        setState(() {
                          selectedMenu = item;
                        });
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<SampleItem>>[
                        const PopupMenuItem<SampleItem>(
                          value: SampleItem.itemOne,
                          child: Text('Femenino'),
                        ),
                        const PopupMenuItem<SampleItem>(
                          value: SampleItem.itemTwo,
                          child: Text('Masculino'),
                        ),
                        const PopupMenuItem<SampleItem>(
                          value: SampleItem.itemThree,
                          child: Text('No especificar'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 295,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffF9F9FF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
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
                          hintText: 'Correo',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 295,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffF9F9FF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Container(
                  width: 265,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Telefono',
                      contentPadding: EdgeInsets.all(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 295,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffF9F9FF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Container(
                  width: 265,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 5,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Codigo Postal',
                      contentPadding: EdgeInsets.all(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 295,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffF9F9FF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
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
                          hintText: 'Interes',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 295,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffF9F9FF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
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
                          hintText: 'ID',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            MaterialButton(
              onPressed: Boton().boton,
              elevation: 0,
              child: Container(
                width: 295,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xff33D49D),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Crear Cuenta',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 45,
                ),
                Text(
                  'Ya tienes cuenta?',
                  style: TextStyle(color: Color(0xff15294B), fontSize: 16),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                    onPressed: Boton().boton,
                    child: Text(
                      'Inicia sesion',
                      style: TextStyle(
                        color: Color(0xffF68E21),
                        fontSize: 16,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  String texto() {
    if (selectedMenu == SampleItem.itemOne)
      return 'Femenino';
    else if (selectedMenu == SampleItem.itemTwo)
      return 'Masculino';
    else if (selectedMenu == SampleItem.itemThree)
      return 'Sin especificar';
    else
      return 'Sexo';
  }
}

class Boton extends Cuentap {
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
