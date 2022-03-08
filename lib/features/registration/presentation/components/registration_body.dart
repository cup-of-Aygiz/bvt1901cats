import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationBody extends StatefulWidget {

  const RegistrationBody({Key? key}) : super(key: key);

  @override
  State<RegistrationBody> createState() => _RegistrationBodyState();
}

class _RegistrationBodyState extends State<RegistrationBody> {

  final TextEditingController _telephoneController= TextEditingController();
  final TextEditingController _nameController= TextEditingController();
  final TextEditingController _lastNameController= TextEditingController();
  final TextEditingController _patronymicController= TextEditingController();
  final TextEditingController _passwordController= TextEditingController();

  @override
  void initState() {
    super.initState();
    _telephoneController.text='+7 (999)999-99-99';
  }
  @override
  void dispose() {
    _telephoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        RegistrationTextField(
          text: 'Имя',
          myController: _nameController,
        ),
        RegistrationTextField(
          text: 'Фамилия',
          myController: _lastNameController,
        ),
        RegistrationTextField(
          text: 'Отчество',
          myController: _patronymicController,
        ),
        RegistrationTextField(
          text: 'Телефон',
          myController: _telephoneController,
        ),
        RegistrationTextField(
          text: 'Пароль',
          myController: _passwordController,
        ),
        Container(
          margin: const EdgeInsets.only(left: 70, right: 70, top: 10),
          height: 50,
          child: ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightBlue),
              elevation: MaterialStateProperty.all<double>(10),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              )),
            ),
            child: const Text('Создать аккаунт',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                )),
          ),
        ),
      ],
    );
  }
}



class RegistrationTextField extends StatelessWidget {

  final String text;
  final TextEditingController myController;

  const RegistrationTextField(
      {Key? key, required this.text, required this.myController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: const TextStyle(fontSize: 18,fontStyle: FontStyle.italic),
          ),
        ),
        Container(
          child: TextField(
            controller: myController,
            decoration: const InputDecoration(
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
