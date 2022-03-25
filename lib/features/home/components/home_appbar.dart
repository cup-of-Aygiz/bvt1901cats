import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    'aqualabean.ru',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img2.fonwall.ru/o/ur/abstract-h2o-digital-art.jpg'),
              ),
            ],
          );
  }
}

