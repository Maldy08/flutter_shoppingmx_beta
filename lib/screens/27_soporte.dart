import 'package:flutter/material.dart';

class Soporte extends StatefulWidget {
  const Soporte({super.key});

  @override
  State<Soporte> createState() => _SoporteState();
}

class _SoporteState extends State<Soporte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: Barra(),
        body: SafeArea(
          child: ListView(
            children: [Contenido()],
          ),
        ));
  }

  AppBar Barra() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        'Soporte',
        style: TextStyle(fontSize: 22, color: Color(0xff15294B)),
      ),
      leading: IconButton(
        icon: Image.asset('assets/Arrow_-_Left.png'),
        onPressed: Boton().boton,
      ),
      toolbarHeight: 70,
      actions: [
        IconButton(
            onPressed: Boton().boton,
            icon:
                Image.asset('assets/Icon_material-notifications-active-2.png'))
      ],
    );
  }
}

class Contenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 900,
        decoration: BoxDecoration(
            color: Color(0xffF9F9FF),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(55), topRight: Radius.circular(55))),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: 296,
              height: 145,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Center(
                child: Container(
                  width: 275,
                  height: 129,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF9F9FF)),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 100,
                        child: TextField(
                          textAlign: TextAlign.center,
                          maxLines: 4,
                          decoration: InputDecoration(
                              hintText: 'Coloque su reporte aqui',
                              border: InputBorder.none),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            child: FloatingActionButton(
                              onPressed: Boton().boton,
                              backgroundColor: Color(0xff33D49D),
                              elevation: 0,
                              child: Image.asset('assets/icon_sprint_.png'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Boton extends Soporte {
  boton() {
    int x = 1;
    print(x);
  }
}
