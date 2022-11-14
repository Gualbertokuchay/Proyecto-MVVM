import 'package:flutter/material.dart';
import 'package:lavanderi/routers/router_manager.dart';
import 'package:lavanderi/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, RouteManager.loginPage);
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          color: Colors.indigo,
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Stack(
        children: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: SingleChildScrollView(
                //llamado a la pagina registro.
                child: RegisterForm(),
              ),
            ),
          )
        ],
      )),
    );
  }
}
