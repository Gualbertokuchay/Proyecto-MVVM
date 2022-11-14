import 'package:flutter/material.dart';
import 'package:lavanderi/pages/Pasteleria_creativa_home.dart';
import 'package:lavanderi/pages/loading_page.dart';
import 'package:lavanderi/pages/login_page.dart';
import 'package:lavanderi/pages/register_page.dart';

//Para llamar a las paginas login y registro y la animacion de la barra de carga.
class RouteManager {
  static const String loadingPage = '/';
  static const String loginPage = '/loginPage';
  static const String registerPage = 'registerPage';
  static const String Pasteleriacreativa = 'Pasteleriacreativa';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    //para el llamado a loadin--
    switch (settings.name) {
      case loadingPage:
        return MaterialPageRoute(
          builder: (context) => const LoadingPage(),
        );

      //Para el llamado para la pagina de login
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());

      //para el llamado de la pagina registro
      case registerPage:
        return MaterialPageRoute(builder: (context) => const RegisterPage());

      //Para el llamado de la pagina home contraseña-Me123@YES Correo-me@mail.com
      case Pasteleriacreativa:
        return MaterialPageRoute(
            builder: (context) => const PasteleriaCreativaHome());

      default:
        throw Exception("No se ha encontrado ninguna ruta¡");
    }
  }
}
