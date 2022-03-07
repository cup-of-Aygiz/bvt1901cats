import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/registration_body.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Регистрация",
          style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading:
            //Ink(
            //decoration: const ShapeDecoration(
            //color: Colors.lightBlue,
            //shape: CircleBorder(),
            //),
            //child:
            IconButton(
          onPressed: () => {},
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.blue,
          ),
        ),
        //),
        backgroundColor: Colors.white,
      ),
      body: const RegistrationBody(),
    );
  }
}
