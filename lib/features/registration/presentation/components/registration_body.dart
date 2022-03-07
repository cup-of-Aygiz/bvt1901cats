import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationBody extends StatelessWidget {
  const RegistrationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        RegistrationTextField(),
        RegistrationTextField(),
        ElevatedButton(
          onPressed: null,
          child: Text('Создать аккаунт',
              style: TextStyle(
                fontSize: 18,
              )),
        )
      ],
    );
  }
}

class RegistrationTextField extends StatelessWidget {
  const RegistrationTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: const Text(
            'Фамилия2',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          margin: const EdgeInsets.all(10),
          //alignment: Alignment.topLeft,
        ),
      ],
    );
  }
}
