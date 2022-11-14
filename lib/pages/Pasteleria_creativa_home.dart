import 'package:flutter/material.dart';
import 'package:lavanderi/Data/constants.dart';
import 'package:lavanderi/views/user_view_model.dart';
import 'package:provider/provider.dart';

class PasteleriaCreativaHome extends StatefulWidget {
  const PasteleriaCreativaHome({super.key});

  @override
  State<PasteleriaCreativaHome> createState() => _PasteleriaCreativaHomeState();
}

class _PasteleriaCreativaHomeState extends State<PasteleriaCreativaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pasteleria Creativa",
          style: style16black,
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.read<UserViewModel>().logoutUser(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
        child: const Text("Home Screen"),
      ),
    );
  }
}
