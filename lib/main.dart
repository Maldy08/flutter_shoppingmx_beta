// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/02_bienvenida.dart';
import 'package:flutter_application_1/screens/03_crear_contrasena.dart';
import 'package:flutter_application_1/screens/04_restablecer_contrasena.dart';
import 'package:flutter_application_1/screens/05_restablecer_contrasena_2.dart';
import 'package:flutter_application_1/screens/06_contrasena_codigo.dart';
import 'package:flutter_application_1/screens/07_cambiar_contrasena.dart';
import 'package:flutter_application_1/screens/08_cuenta_persona.dart';
import 'package:flutter_application_1/screens/09_cuenta_negocio.dart';
import 'package:flutter_application_1/screens/10_cuenta_creada.dart';
import 'package:flutter_application_1/screens/11_inicio.dart';
import 'package:flutter_application_1/screens/12_buscar.dart';
import 'package:flutter_application_1/screens/13_buscar_negocio.dart';
import 'package:flutter_application_1/screens/14_buscar_producto.dart';
import 'package:flutter_application_1/screens/15_buscar_destacados.dart';
import 'package:flutter_application_1/screens/16_edit_persona.dart';
import 'package:flutter_application_1/screens/17_edit_negocio.dart';
import 'package:flutter_application_1/screens/18_notificaciones_ajustes.dart';
import 'package:flutter_application_1/screens/19_favoritos.dart';
import 'package:flutter_application_1/screens/20_favoritos_vacio.dart';
import 'package:flutter_application_1/screens/21_profile_persona.dart';
import 'package:flutter_application_1/screens/22_profile_negocio.dart';
import 'package:flutter_application_1/screens/23_ajustes_persona.dart';
import 'package:flutter_application_1/screens/24_ajustes_negocio.dart';
import 'package:flutter_application_1/screens/25_ajustes.dart';
import 'package:flutter_application_1/screens/26_politica_de_privacidad.dart';
import 'package:flutter_application_1/screens/27_soporte.dart';
import 'package:flutter_application_1/screens/29_buscar_promociones.dart';
import 'package:flutter_application_1/screens/28_mensaje_soporte.dart';
import 'package:flutter_application_1/screens/30_buscar_cupones.dart';
import 'package:flutter_application_1/screens/31_buscar_destacado_cp.dart';
import 'package:flutter_application_1/screens/32_codigo_barras.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShoppingMX',
      home: Codigo_barras(),
    );
  }
}

/*
  Falta correguir algunas funcionalidades, asi como agregar algunas,
  por otra parte igual falta cambiar algunas parte del codigo en especial las primeras, ya que 
  son muy largas y se pueden mejorar.
  Por lo mientras esta es una version preeliminar.
  Se hizo pantallas por separado ya que se vincularan una con otra
*/
