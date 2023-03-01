import 'package:flutter/material.dart';

class Profile_per extends StatefulWidget {
  const Profile_per({super.key});

  @override
  State<Profile_per> createState() => _Profile_perState();
}

// Estaba viendo esta parte en el prototipo,
// pero era lo mismo que editar perfil, si no me equivoco
// la intencion de esta era porder ver cosas relevantes del perfil,
// sin modificar solo una vista rapida a la informacion que se tiene
// al igual que puedan ver el perfil de dicha empresa
// por lo cual solo quitare las cosas para editar y pondre un boton en la esquina
// por si se quiere editar y salgan las opciones

class _Profile_perState extends State<Profile_per> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Head(),
              SizedBox(
                height: 60,
              ),
              Foto(),
              SizedBox(
                height: 25,
              ),
              Text(
                'Jhon Smith',
                style: TextStyle(fontSize: 21, color: Color(0xff15294B)),
              ),
              SizedBox(
                height: 90,
              ),
              Layer('Wiliam Jonson'),
              SizedBox(
                height: 15,
              ),
              Layer('+880 000 111 333'),
              SizedBox(
                height: 15,
              ),
              Layer('youremail@website.com'),
              SizedBox(
                height: 15,
              ),
              Layer('Interes'),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
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
          borderRadius: BorderRadius.circular(25), color: Colors.white),
      child: Row(
        children: [
          SizedBox(
            width: 25,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 16, color: Color(0xff15294B)),
          )
        ],
      ),
    );
  }
}

class Foto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      child: FloatingActionButton(
        onPressed: Boton().boton,
        elevation: 0,
        backgroundColor: Colors.grey,
        child: Center(
          child: Text(
            '120x120',
            style: TextStyle(color: Colors.black26),
          ),
        ),
      ),
    );
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
          width: 110,
        ),
        Text(
          'Mi Perfil',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromRGBO(21, 41, 75, 1),
          ),
        ),
        SizedBox(
          width: 90,
        ),
        Container(
          width: 40,
          height: 40,
          child: FloatingActionButton(
            onPressed: Boton().boton,
            backgroundColor: Colors.white,
            elevation: 0,
            child: Image.asset('assets/settings.png'),
          ),
        ),
      ],
    );
  }
}

class Boton extends Profile_per {
  boton() {
    int x = 1;
    print(1);
  }
}
