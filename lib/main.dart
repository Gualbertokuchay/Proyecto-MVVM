import 'package:flutter/material.dart';
import 'package:lavanderi/routers/router_manager.dart';
import 'package:lavanderi/views/user_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //https://pub.dev/packages/provider Ejemplo de validacion de usuarios.
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserViewModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteManager.onGenerateRoute,
        initialRoute: RouteManager.loadingPage,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
