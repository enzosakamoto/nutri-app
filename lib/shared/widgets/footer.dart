import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: const Color.fromARGB(255, 226, 108, 108),
      child: const Center(
        child: Text(
          'Desenvolvido por Enzo Sakamoto',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
