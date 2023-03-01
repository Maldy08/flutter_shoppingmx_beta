import 'package:flutter/material.dart';

class Politica extends StatefulWidget {
  const Politica({super.key});

  @override
  State<Politica> createState() => _PoliticaState();
}

class _PoliticaState extends State<Politica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(249, 249, 255, 1),
        body: SafeArea(
          child: ListView(
            children: [
              head(),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Texto(),
                ],
              )
            ],
          ),
        ));
  }
}

class Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 1000,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Texto de la Politica',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff15294B),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 280,
            height: 930,
            child: Text(
              'Lorem ipsum, or lipsu[m as it is sometimes known, is dummy text used in laying out print, graphic or web designs. In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to',
              style: TextStyle(fontSize: 14, color: Color(0xff788397)),
            ),
          )
        ],
      ),
    );
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
            backgroundColor: Colors.white,
            elevation: 0,
            child: Image.asset('assets/Arrow_-_Left.png'),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Text(
          'Politica de Privacidad',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff15294B),
          ),
        ),
      ],
    );
  }
}

class Boton extends Politica {
  boton() {
    int x = 1;
    print(x);
  }
}
